#ifndef CUBEMAP_CLASS_H
#define CUBEMAP_CLASS_H
#include "Texture.h"
#include <vector>

class Cubemap
{
public:
	GLuint ID;

	Cubemap(std::vector<std::string> faces);

	// Binds a texture
	void Bind();
	// Unbinds a texture
	void Unbind();
};

#endif // !CUBEMAP_CLASS_H
