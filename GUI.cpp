#include "GUI.h"

void GUI::init()
{
	m_renderer = &CEGUI::OpenGL3Renderer::bootstrapSystem();
	m_rp = static_cast<CEGUI::DefaultResourceProvider*>(CEGUI::System::getSingleton().getResourceProvider());
	m_rp->setResourceGroupDirectory("imagesets", "gui/imagesets/");
	m_rp->setResourceGroupDirectory("schemes", "gui/schemes/");
	m_rp->setResourceGroupDirectory("fonts", "gui/fonts/");
	m_rp->setResourceGroupDirectory("layouts", "gui/layouts/");
	m_rp->setResourceGroupDirectory("looknfeel", "gui/looknfeel/");
	m_rp->setResourceGroupDirectory("lua_scripts", "gui/lua_scripts/");
	
	CEGUI::ImageManager::setImagesetDefaultResourceGroup("imagesets");
	CEGUI::Scheme::setDefaultResourceGroup("schemes");
	CEGUI::Font::setDefaultResourceGroup("fonts");
	CEGUI::WidgetLookManager::setDefaultResourceGroup("looknfeel");
	CEGUI::WindowManager::setDefaultResourceGroup("layouts");
	CEGUI::ScriptModule::setDefaultResourceGroup("lua_scripts");
	
	m_context = &CEGUI::System::getSingleton().createGUIContext(m_renderer->getDefaultRenderTarget());
	m_root = CEGUI::WindowManager::getSingleton().createWindow("DefaultWindow", "root");
	m_context->setRootWindow(m_root);
}


void GUI::setFont(const char* font)//"DejaVuSans-10
{
	const std::string suffix = ".font";
	CEGUI::FontManager::getSingleton().createFromFile(font + suffix);
	m_context->setDefaultFont(font);
}

void GUI::loadScheme(const char* file)
{
	CEGUI::SchemeManager::getSingleton().createFromFile(file);
}

void GUI::loadLayout(const char* file)
{
	CEGUI::Window* newWindow = CEGUI::WindowManager::getSingleton().loadLayoutFromFile(file);
	m_root->addChild(newWindow);
}

void GUI::draw()
{
	glDisable(GL_DEPTH_TEST);
	CEGUI::System::getSingleton().getRenderer()->beginRendering();
	m_context->draw();
	CEGUI::System::getSingleton().getRenderer()->endRendering();
	glDisable(GL_SCISSOR_TEST);
	glEnable(GL_DEPTH_TEST);
	glDepthFunc(GL_LESS);
}

void GUI::windowResize(int width, int height) {
	m_renderer->setDisplaySize(CEGUI::Sizef(width, height));
}

void GUI::Update(GLFWwindow* window)
{
	if (lastTime == -1) lastTime = glfwGetTime();
	double currentTime = glfwGetTime();
	double dt = currentTime - lastTime;
	lastTime = currentTime;

	// Stores the coordinates of the cursor
	double mouseX;
	double mouseY;
	// Fetches the coordinates of the cursor
	glfwGetCursorPos(window, &mouseX, &mouseY);
	m_context->injectMousePosition(mouseX, mouseY);
	if (glfwGetMouseButton(window, GLFW_MOUSE_BUTTON_LEFT) == GLFW_PRESS)
	{
		m_context->injectMouseButtonDown(CEGUI::MouseButton::LeftButton);
	}
	else {
		m_context->injectMouseButtonUp(CEGUI::MouseButton::LeftButton);
	}

	m_context->injectTimePulse(dt/1000.0f);
}

CEGUI::Window* GUI::createWidget(const char* type, const char* name)
{
	CEGUI::Window* widget = CEGUI::WindowManager::getSingleton().createWindow(type, name);
	m_root->addChild(widget);
	return widget;
}

CEGUI::Window* GUI::createWidget(const char* type, const char* name, float posXPercent, int posXPixels, float posYPercent, int posYPixels, float sizeXPercent, int sizeXPixels, float sizeYPercent, int sizeYPixels)
{
	CEGUI::Window* widget = createWidget(type, name);
	widget->setPosition(CEGUI::UVector2(CEGUI::UDim(posXPercent, posXPixels), CEGUI::UDim(posYPercent, posYPixels)));
	widget->setSize(CEGUI::USize(CEGUI::UDim(sizeXPercent, sizeXPixels), CEGUI::UDim(sizeYPercent, sizeYPixels)));
	return widget;
}

CEGUI::Window* GUI::createWidgetPercent(const char* type, const char* name, float posX, float posY, float sizeX, float sizeY)
{
	return createWidget(type, name, posX, 0, posY, 0, sizeX, 0, sizeY, 0);
}

CEGUI::Window* GUI::createWidgetPixels(const char* type, const char* name, int posX, int posY, int sizeX, int sizeY)
{
	return createWidget(type, name, 0, posX, 0, posY, 0, sizeX, 0, sizeY);
}

void GUI::setMouseCursor(const char* file)
{
	m_context->getMouseCursor().setDefaultImage(file);
}

void GUI::showCursor()
{
	m_context->getMouseCursor().show();
}

void GUI::hideCursor()
{
	m_context->getMouseCursor().hide();
}
