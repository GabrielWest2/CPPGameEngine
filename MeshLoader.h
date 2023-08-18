#ifndef BASIC_MESH_CLASS_H
#define BASIC_MESH_CLASS_H

#include <string>
#include <vector>
#include <assimp/Importer.hpp>
#include <assimp/scene.h>
#include <assimp/postprocess.h>
#include <glad/glad.h>
#include <iostream>

#include "Model.h"



class MeshLoader
{
public:
    MeshLoader() {};
    ~MeshLoader();

    Model LoadMesh(const std::string& directory, const std::string& file, bool cullBackfaces);
};

#endif
