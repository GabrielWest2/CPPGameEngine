#ifndef NDEBUG
#   define ASSERT(condition, message) \
        do { \
            if (! (condition)) { \
                std::cerr << "Assertion `" #condition "` failed in " << __FILE__ \
                          << " line " << __LINE__ << ": " << std::endl << message << std::endl << std::endl; \
                std::terminate(); \
            } \
        } while (false)
#else
#   define ASSERT(condition, message) do { } while (false)
#endif

#ifndef MESH_CLASS_H
#define MESH_CLASS_H

#include<string>

#include"VAO.h"
#include"EBO.h"
#include"Camera.h"
#include"Texture.h"
#include"Material.h"

class Mesh
{
public:
	std::vector <Vertex> vertices;
	std::vector <GLuint> indices;
	std::vector <Texture> textures;
	Material material;
	bool cullBackside = true;
	
	// Store VAO in public so it can be used in the Draw function
	VAO VAO;
	//rp3d::ConcaveMeshShape* concaveMesh;
	//objl::Mesh objlMesh;
	// Initializes the mesh
	Mesh(std::vector <Vertex>& vertices, std::vector <GLuint>& indices, std::vector <Texture>& textures, Material material, bool cullBackface);

	// Draws the mesh
	void Draw
	(
		Shader& shader, 
		Camera& camera
	);

	glm::mat4 modelMatrix = glm::mat4(1.0f);
	glm::vec3 position = glm::vec3(0.0f, 0.0f, 0.0f);
	glm::vec3 rotation = glm::vec3(0.0f, 0.0f, 0.0f);
	glm::vec3 scale = glm::vec3(1.0f, 1.0f, 1.0f);
};
#endif