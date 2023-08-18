#include "GUI.h"
#include "Skybox.h"
#include "MeshLoader.h"


unsigned int width = 800;
unsigned int height = 800;
GUI* gui;

void onClicked() {
	std::cout << "Clicked!" << std::endl;
}

void window_size_callback(GLFWwindow* window, int _width, int _height)
{
	width = _width;
	height = _height;
	gui->windowResize(_width, _height);
}


int main()
{
	#pragma region Setup_Window
	// Initialize GLFW
	glfwInit();

	// Tell GLFW what version of OpenGL we are using 
	// In this case we are using OpenGL 3.3
	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
	// Tell GLFW we are using the CORE profile
	// So that means we only have the modern functions
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

	// Create a GLFWwindow object of 800 by 800 pixels, naming it "YoutubeOpenGL"
	GLFWwindow* window = glfwCreateWindow(width, height, "Game Engine", NULL, NULL);
	// Error check if the window fails to create
	if (window == NULL)
	{
		std::cout << "Failed to create GLFW window" << std::endl;
		glfwTerminate();
		return -1;
	}
	// Introduce the window into the current context
	glfwMakeContextCurrent(window);
	//Setup callback
	glfwSetWindowSizeCallback(window, window_size_callback);

	//Load GLAD so it configures OpenGL
	gladLoadGL();
	// Specify the viewport of OpenGL in the Window
	// In this case the viewport goes from x = 0, y = 0, to x = 800, y = 800
	glViewport(0, 0, width, height);
	// Enables the Depth Buffer
	glEnable(GL_CULL_FACE);
	#pragma endregion
    #pragma region Setup_Shaders
	// Generates Shader object using shaders default.vert and default.frag
	Shader shaderProgram("default.vert", "default.frag");
	Shader grassShader("grass.vert", "grass.frag");

	std::cout << shaderProgram.ID << "             " << grassShader.ID << std::endl;

	// Take care of all the light related things
	glm::vec4 lightColor = glm::vec4(1.0f, 1.0f, 1.0f, 1.0f);
	glm::vec3 lightPos = glm::vec3(100, 10.0f, 100);
	glm::mat4 lightModel = glm::mat4(1.0f);
	lightModel = glm::translate(lightModel, lightPos);

	shaderProgram.Activate();
	glUniform4f(glGetUniformLocation(shaderProgram.ID, "lightColor"), lightColor.x, lightColor.y, lightColor.z, lightColor.w);
	glUniform3f(glGetUniformLocation(shaderProgram.ID, "lightPos"), lightPos.x, lightPos.y, lightPos.z);
    #pragma endregion
    #pragma region Setup_GUI
	gui = new GUI();
	gui->init();
	gui->loadScheme("AlfiskoSkin.scheme");
	gui->loadScheme("TaharezLook.scheme");
	gui->loadScheme("HUDDemo.scheme");
	gui->loadScheme("Generic.scheme");
	gui->loadScheme("VanillaSkin.scheme");
	gui->setFont("Roboto-BoldItalic");

	CEGUI::PushButton* widget = static_cast<CEGUI::PushButton*>(gui->createWidgetPixels("AlfiskoSkin/Button", "testbutton", 10, 10, 50, 20));
	widget->setText("Hello");
	widget->subscribeEvent(CEGUI::PushButton::EventClicked, CEGUI::Event::Subscriber(&onClicked));

	gui->setMouseCursor("TaharezLook/MouseArrow");
	gui->showCursor();
    #pragma endregion
	#pragma region Setup_Physics
	//model.meshes[0].scale = glm::vec3(10, 10, 10);
	/*
	rp3d::PhysicsCommon physicsCommon;
	rp3d::PhysicsWorld* world = physicsCommon.createPhysicsWorld();

	rp3d::Vector3 position(0, 5, 0);
	rp3d::Quaternion orientation = rp3d::Quaternion::identity();
	rp3d::Transform transform(position, orientation);

	rp3d::RigidBody* body = world->createRigidBody(transform);
	rp3d::SphereShape* sphereShape = physicsCommon.createSphereShape(0.5);
	body->addCollider(sphereShape, transform);



	rp3d::Vector3 position2(0, 0, 0);
	rp3d::Quaternion orientation2 = rp3d::Quaternion::identity();
	rp3d::Transform transform2(position2, orientation2);

	rp3d::RigidBody* plane = world->createRigidBody(transform2);
	plane->setType(rp3d::BodyType::STATIC);
	plane->enableGravity(false);
	rp3d::BoxShape* boxShape = physicsCommon.createBoxShape(rp3d::Vector3(20.0, 0.01, 50.0));
	plane->addCollider(boxShape, transform2);

	//plane->addCollider(model2.meshes.at(0).concaveMesh, transform);
	//world.
	const rp3d::decimal timeStep = 1.0f / 60.0f;

	// Step the simulation a few steps 
	for (int i = 0; i < 20; i++) {

		world->update(timeStep);

		// Get the updated position of the body 
		const rp3d::Transform& transform = body->getTransform();
		const rp3d::Vector3& position = transform.getPosition();

		// Display the position of the body 
		std::cout << "Body Position: (" << position.x << ", " <<
			position.y << ", " << position.z << ")" << std::endl;
	}

	*/
	#pragma endregion
	#pragma region Skybox
	Skybox skybox(std::vector<std::string>
	{
		"skybox/left.png",
		"skybox/right.png",
		"skybox/up.png",
		"skybox/down.png",
		"skybox/front.png",
		"skybox/back.png"
	});
	#pragma endregion



	MeshLoader meshLoader;
	Model m = meshLoader.LoadMesh("models/test", "model.dae", true);
	m.meshes[0].rotation = glm::vec3(90, 180, 0);
	//Model m2 = meshLoader.LoadMesh("C:/Users/Gabe/Downloads/Wii U - The Legend of Zelda Breath of the Wild - Hero of the Sky Set/Hero of the Sky Set", "Armor_215_Head.dae", false);
	Camera camera(width, height, glm::vec3(0.0f, 0.0f, 2.0f));

	//Model model("models/eightfold/eightfold.obj");
	//model.meshes[3].scale = glm::vec3(0);	 // Hide the barrier
	//model.meshes[28].cullBackside = false;   // Show both sides of the window panes
	//model.meshes[16].cullBackside = false;   // Show both sides of the window panes
	//Model model2("models/grass/grass.obj", false);
	

	// Main while loop
	while (!glfwWindowShouldClose(window))
	{
		glClearColor(0.85f, 0.85f, 0.9f, 1.0f);
		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
		glViewport(0, 0, width, height);

		gui->Update(window);
		camera.Inputs(window);

		camera.updateMatrix(80.0f, 0.1f, 100.0f, width, height);

		

		skybox.Draw(camera);
		m.Draw(shaderProgram, camera);



		gui->draw();
		glfwSwapBuffers(window);
		glfwPollEvents();

	}



	// Delete all the objects we've created
	shaderProgram.Delete();
	grassShader.Delete();
	// Delete window before ending the program
	glfwDestroyWindow(window);
	// Terminate GLFW before ending the program
	glfwTerminate();
	return 0;
}