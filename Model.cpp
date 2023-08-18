#include"Model.h"
#include<vector>
#include"Texture.h"
#include"OBJ_Loader.h"

Model::Model(const char* file, bool cullBackfaces)// , rp3d::PhysicsCommon& physicsCommon)
{
	// Initialize Loader
	objl::Loader Loader;

	//std::cout << loadout << std::endl;
	bool loadout = Loader.LoadFile(file);

	if (loadout)
	{

		// Go through each loaded mesh and out its contents
		for (int i = 0; i < Loader.LoadedMeshes.size(); i++)
		{
			// Copy one of the loaded meshes to be our current mesh
			objl::Mesh curMesh = Loader.LoadedMeshes[i];
			std::cout << curMesh.MeshName << std::endl;
			std::vector<Vertex> vertices = curMesh.Vertices;
			std::vector<GLuint> indices = curMesh.Indices;
			std::vector<Texture> textures;
			//Texture tex("models/Guardian_A_Alb.png", "diffuse", 0);
			if (!curMesh.MeshMaterial.map_Kd.empty()) {
				Texture tex(curMesh.MeshMaterial.map_Kd, "diffuse", 0);
				textures.push_back(tex);
			}
			if (!curMesh.MeshMaterial.map_d.empty()) {
				Texture tex(curMesh.MeshMaterial.map_d, "alpha", 1);
				textures.push_back(tex);
			}
			//std::reverse(indices.begin(), indices.end()); // flip triangles

			Mesh newMesh(vertices, indices, textures, curMesh.MeshMaterial, cullBackfaces);
			meshes.push_back(newMesh);
			matricesMeshes.push_back(glm::mat4(1.0f));

			/*
			const int nbVertices = vertices.size();
			const int nbIndices = indices.size();
			std::vector<float> newVertices(nbVertices * 3);
			std::vector<int> newIndices(nbIndices);

			for (int i = 0; i < nbVertices; i++) {
				newVertices.push_back(vertices.at(i).position.x);
				newVertices.push_back(vertices.at(i).position.y);
				newVertices.push_back(vertices.at(i).position.z);
			}
			for (int i = 0; i < nbIndices; i++) {
				newIndices.push_back(indices.at(i));
			}
			
			rp3d::TriangleVertexArray* triangleArray =
				new rp3d::TriangleVertexArray(nbVertices, newVertices.data(), 3 * sizeof(float), nbIndices/3,
					newIndices.data(), 3 * sizeof(int),
					rp3d::TriangleVertexArray::VertexDataType::VERTEX_FLOAT_TYPE,
					rp3d::TriangleVertexArray::IndexDataType::INDEX_INTEGER_TYPE);

			
			rp3d::TriangleMesh* triangleMesh = physicsCommon.createTriangleMesh();
			triangleMesh->addSubpart(triangleArray);
			newMesh.concaveMesh = physicsCommon.createConcaveMeshShape(triangleMesh);
			*/
		}

	}
}

Model::Model(std::vector<Mesh> _meshes)
{
	meshes = _meshes;
}

void Model::Draw(Shader& shader, Camera& camera)
{
	// Go over all meshes and draw each one
	for (unsigned int i = 0; i < meshes.size(); i++)
	{
		meshes[i].Mesh::Draw(shader, camera);
	}
}

std::vector<glm::mat4> Model::getModelMatrices()
{
	return matricesMeshes;
}

void Model::setModelMatrix(int index, glm::mat4& matrix)
{
	matricesMeshes.at(index) = matrix;
}

