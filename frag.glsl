#version 400
out vec4 frag_color;
uniform mat4 unpv;
in vec3 normal;
void main() {
	vec3 lightdirct = -vec3(0.0, -1.0, -1.0);
	vec3 blue = vec3(0.1, 0.3, 0.8);
	float df = max(0.0, dot(normalize(normal), normalize(lightdirct)));
	df = min(1.0, df);
	blue *= df;
	frag_color = vec4(blue, 1.0);
}
