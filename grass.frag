#version 330 core

// Outputs colors in RGBA
out vec4 FragColor;

// Imports the current position from the Vertex Shader
in vec3 crntPos;
// Imports the normal from the Vertex Shader
in vec3 Normal;
// Imports the texture coordinates from the Vertex Shader
in vec2 texCoord;
in float grassHeight;


// Gets the Texture Units from the main function
uniform sampler2D diffuse0;
uniform sampler2D specular0;
// Gets the color of the light from the main function
uniform vec4 lightColor;
// Gets the position of the light from the main function
uniform vec3 lightPos;
// Gets the position of the camera from the main function
uniform vec3 camPos;
// 0 use tex; 1 don't use tex
uniform int dontUseTexture;
uniform vec4 albedoColor;


const vec4 color1 = vec4(17/255.0, 133/255.0, 12/255.0, 1.0);
const vec4 color2 = vec4(21/255.0, 199/255.0, 12/255.0, 1.0);


void main()
{
	vec4 sampled = texture(diffuse0, vec2(1.0f - texCoord.y, texCoord.x));

    //Discard transparent pixels
    if(sampled.a < 0.75){
        discard;
    }

	sampled = mix(color1, color2, sampled.g  * grassHeight);

	FragColor = vec4(sampled.rgb, 1.0);
}