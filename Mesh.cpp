#include "Mesh.h"

Mesh::Mesh(std::vector <Vertex>& vertices, std::vector <GLuint>& indices, std::vector <Texture>& textures, Material material, bool cullBackface = true)
{
	Mesh::vertices = vertices;
	Mesh::indices = indices;
	Mesh::textures = textures;
	Mesh::material = material;
	Mesh::cullBackside = cullBackface;
	VAO.Bind();
	// Generates Vertex Buffer Object and links it to vertices
	VBO VBO(vertices);
	// Generates Element Buffer Object and links it to indices
	EBO EBO(indices);
	// Links VBO attributes such as coordinates and colors to VAO
	std::cout << sizeof(Vertex) << "    size " << std::endl;
	VAO.LinkAttrib(VBO, 0, 3, GL_FLOAT, sizeof(Vertex), (void*)0);
	VAO.LinkAttrib(VBO, 1, 3, GL_FLOAT, sizeof(Vertex), (void*)(3 * sizeof(float)));
	//VAO.LinkAttrib(VBO, 2, 3, GL_FLOAT, sizeof(Vertex), (void*)(6 * sizeof(float)));
	//VAO.LinkAttrib(VBO, 3, 2, GL_FLOAT, sizeof(Vertex), (void*)(9 * sizeof(float)));
	VAO.LinkAttrib(VBO, 2, 2, GL_FLOAT, sizeof(Vertex), (void*)(6 * sizeof(float)));
	// Unbind all to prevent accidentally modifying them
	VAO.Unbind();
	VBO.Unbind();
	EBO.Unbind();
}


void Mesh::Draw
(
	Shader& shader, 
	Camera& camera
)
{
	// Bind shader to be able to access uniforms
	shader.Activate();
	VAO.Bind();

	// Keep track of how many of each type of textures we have
	unsigned int numDiffuse = 0;
	unsigned int numSpecular = 0;
	unsigned int numAlpha = 0;

	if (cullBackside)
		glEnable(GL_CULL_FACE);
	else
		glDisable(GL_CULL_FACE);

	for (unsigned int i = 0; i < textures.size(); i++)
	{
		
		std::string num;
		std::string type = textures[i].type;
		if (type == "diffuse")
		{
			num = std::to_string(numDiffuse++);
		}
		else if (type == "specular")
		{
			num = std::to_string(numSpecular++);
		}
		else if (type == "alpha")
		{
			num = std::to_string(numAlpha++);
		}
		textures[i].texUnit(shader, (type + num).c_str(), i);
		textures[i].Bind();
	}

	glUniform1i(glGetUniformLocation(shader.ID, "dontUseTexture"), numDiffuse==0 ? 1 : 0);
	glUniform4f(glGetUniformLocation(shader.ID, "albedoColor"), material.Kd.x, material.Kd.y, material.Kd.z, 1.0);

	// Take care of the camera Matrix
	glUniform3f(glGetUniformLocation(shader.ID, "camPos"), camera.Position.x, camera.Position.y, camera.Position.z);
	camera.Matrix(shader, "camMatrix");


	// Transform the matrices to their correct form
	glm::mat4 trans = glm::translate(position);
	glm::mat4 rot = glm::rotate(glm::radians(rotation.x), glm::vec3(1, 0, 0)) * glm::rotate(glm::radians(rotation.y), glm::vec3(0, 1, 0)) * glm::rotate(glm::radians(rotation.z), glm::vec3(0, 0, 1));
	glm::mat4 sca = glm::scale(scale);
	
	modelMatrix = trans * rot * sca;

	glUniformMatrix4fv(glGetUniformLocation(shader.ID, "model"), 1, GL_FALSE, glm::value_ptr(modelMatrix));

	// Draw the actual mesh
	glDrawElements(GL_TRIANGLES, indices.size(), GL_UNSIGNED_INT, 0);

	glEnable(GL_CULL_FACE);
}