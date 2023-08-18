#ifndef SKYBOX_CLASS_H
#define SKYBOX_CLASS_H
#include "Cubemap.h"
#include "VAO.h"
#include "Camera.h"

class Skybox
{
public:
	GLuint VAO;
	Shader skyboxShader;
	Cubemap skyboxTexture;
	Skybox(std::vector<std::string> faces);
	void Draw(Camera camera);
};

#endif 