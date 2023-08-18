#ifndef VERTEX_CLASS_H
#define VERTEX_CLASS_H

#include <glm/glm.hpp>
// Structure to standardize the vertices used in the meshes
struct Vertex
{
	glm::vec3 position;
	glm::vec3 normal;
	glm::vec2 texUV;
};

#endif // !VERTEX_CLASS_H
