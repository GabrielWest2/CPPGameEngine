#include "MeshLoader.h"

#define ARRAY_SIZE_IN_ELEMENTS(a) (sizeof(a)/sizeof(a[0]))


#define ASSIMP_LOAD_FLAGS (aiProcess_Triangulate | aiProcess_GenSmoothNormals /*| aiProcess_FlipUVs*/ | aiProcess_JoinIdenticalVertices)



MeshLoader::~MeshLoader()
{
}

Model MeshLoader::LoadMesh(const std::string& directory,const std::string& file, bool cullBackfaces)
{
	Assimp::Importer Importer;

	const aiScene* pScene = Importer.ReadFile(directory+"/"+file, ASSIMP_LOAD_FLAGS);
	std::cout << "HasMeshes: " << (pScene->HasMeshes() ? "true" : "false") << std::endl;
	std::cout << "HasTextures: " << (pScene->HasTextures() ? "true" : "false") << std::endl;
	std::cout << "HasLights: " << (pScene->HasLights() ? "true" : "false") << std::endl;
	std::cout << "HasMaterials: " << (pScene->HasMaterials() ? "true" : "false") << std::endl;
	std::cout << "HasAnimations: " << (pScene->HasAnimations() ? "true" : "false") << std::endl;

	std::cout << "Full model vertices: " << pScene->mMeshes[0]->mNumVertices << std::endl;
	std::vector<Mesh> meshes;

	for(int d = 0; d < pScene->mNumMeshes; d++){
		aiMesh *currentMesh = pScene->mMeshes[d];
		std::vector <Vertex> vertices;
		std::vector <GLuint> indices;
		std::vector <Texture> textures;
		for (int i = 0; i < currentMesh->mNumVertices; i++) {
			aiVector3D vertex = currentMesh->mVertices[i];
			aiVector3D normal = currentMesh->mNormals[i];
			aiVector3D uv     = currentMesh->HasTextureCoords(0) ? currentMesh->mTextureCoords[0][i] : aiVector3D(0, 0, 0); // first uv channel
			Vertex v = { glm::vec3(vertex.x, vertex.y, vertex.z), glm::vec3(normal.x, normal.y, normal.z) , glm::vec2(uv.x, uv.y) };
			vertices.push_back(v);
		}
		//Loop over each face
		for (int i = 0; i < currentMesh->mNumFaces; i++) {
			aiFace& _face = currentMesh->mFaces[i];
			//Insert each index; should be 3 per face
			ASSERT(_face.mNumIndices == 3, "There must be 3 indices per face! Model must be triangulated");
			for(int j = 0; j < _face.mNumIndices; j++) {
				indices.push_back(_face.mIndices[j]);
			}
		}
		aiMaterial* currentMat = pScene->mMaterials[currentMesh->mMaterialIndex];
		aiColor4D diffuse;
		Material modelMat = Material(currentMat->GetName().data);
		if (AI_SUCCESS == aiGetMaterialColor(currentMat, AI_MATKEY_COLOR_DIFFUSE, &diffuse)) {
			modelMat.Kd = glm::vec3(diffuse.r, diffuse.g, diffuse.b);
		}

		if (currentMat->GetTextureCount(aiTextureType_DIFFUSE) > 0) {
			aiString path;
			currentMat->GetTexture(aiTextureType_DIFFUSE, 0, &path);
			std::cout << "Diffuse Texture: " << path.data << std::endl;
			textures.push_back(Texture(directory + "/" + path.data, "diffuse", 0));
		}
		meshes.push_back(Mesh(vertices, indices, textures, Material("DEFAULT"), cullBackfaces));

		std::cout << "Loaded Vertices: " << vertices.size() << std::endl;
		std::cout << "Loaded Indices: " << indices.size() << std::endl;
	}

	return Model(meshes);
}

