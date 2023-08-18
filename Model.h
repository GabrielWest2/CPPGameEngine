#ifndef MODEL_CLASS_H
#define MODEL_CLASS_H

#include<json/json.h>
#include"Mesh.h"

using json = nlohmann::json;


class Model
{
public:
	// Loads in a model from a file and stores tha information in 'data', 'JSON', and 'file'
	Model(const char* file, bool cullBackfaces = true);// , rp3d::PhysicsCommon& physicsCommon);
	Model(std::vector<Mesh> meshes);// , rp3d::PhysicsCommon& physicsCommon);

	void Draw(Shader& shader, Camera& camera);
	std::vector<glm::mat4> getModelMatrices();
	void setModelMatrix(int index, glm::mat4& matrix);
	std::vector<Mesh> meshes;
private:
	// Variables for easy access
	const char* file;
	std::vector<unsigned char> data;
	json JSON;

	// All the meshes and transformations
	std::vector<glm::mat4> matricesMeshes;

	// Prevents textures from being loaded twice
	std::vector<std::string> loadedTexName;
	std::vector<Texture> loadedTex;


};
#endif