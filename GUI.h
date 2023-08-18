#ifndef GUI_CLASS_H
#define GUI_CLASS_H

#include"Model.h"
#include<CEGUI/CEGUI.h>
#include<CEGUI/RendererModules/OpenGL/GL3Renderer.h>

class GUI {
public:
	void init();
	void setFont(const char* font);
	void loadScheme(const char* file);
	void loadLayout(const char* file);
	void draw();
	void windowResize(int width, int height);
	void Update(GLFWwindow* window);
	CEGUI::Window* createWidget(const char* type, const char* name);
	CEGUI::Window* createWidget(const char* type, const char* name, float posXPercent, int posXPixels, float posYPercent, int posYPixels, float sizeXPercent, int sizeXPixels, float sizeYPercent, int sizeYPixels);
	CEGUI::Window* createWidgetPercent(const char* type, const char* name, float posX, float posY, float sizeX, float sizeY);
	CEGUI::Window* createWidgetPixels(const char* type, const char* name, int posX, int posY, int sizeX, int sizeY);

	void setMouseCursor(const char* file);
	void showCursor();
	void hideCursor();
private:
	CEGUI::OpenGL3Renderer* m_renderer;
	CEGUI::DefaultResourceProvider* m_rp;
	CEGUI::GUIContext* m_context;
	CEGUI::Window* m_root;
	double lastTime = -1;
};

#endif