#version 330

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:globals.glsl>

uniform sampler2D Sampler0;

in float sphericalVertexDistance;
in float cylindricalVertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;
in vec2 texCoord1;

out vec4 fragColor;

struct Skybox {
    float time;
    vec3 cartesian;
    vec2 polar;
};

vec4 skb1(Skybox sb){
    // Adaptado shader de Dave Hoskins: https://www.shadertoy.com/view/Msl3WH
    float s = 0.0, v = 0.0;
    vec3 uv = normalize(sb.cartesian);
	float t = sb.time*0.005;
	uv.x += sin(t) * .3;
	float si = sin(t*1.5);
	float co = cos(t);
	uv.xy *= mat2(co, si, -si, co);
	vec3 col = vec3(0.0);
	vec3 init = vec3(0.25, 0.25 + sin(sb.time * 0.001) * .1, sb.time * 0.0008);
	for (int r = 0; r < 100; r++) 
	{
		vec3 p = init + s * uv;
		p.z = mod(p.z, 2.0);
		for (int i=0; i < 10; i++)	p = abs(p * 2.04) / dot(p, p) - 0.75;
		v += length(p * p) * smoothstep(0.0, 0.5, 0.9 - s) * .002;
		col +=  vec3(v * 0.8, 1.1 - s * 0.6, .7 + v * 0.5) * v * 0.013;
		s += .01;
	}
	return vec4(col, 1.0);
}

vec4 skb2(Skybox sb) {
    // Hacer lo mismo que en skb1, pero con un filtro como de niebla verde
    vec4 baseColor = skb1(sb);
    vec3 fogColor = vec3(0.3, 0.6, 0.4);

    float fogFactor = clamp(length(sb.cartesian) * 0.4, 0.0, 1.0);
    fogFactor = pow(fogFactor, 1.5);

    return vec4(mix(baseColor.rgb, fogColor, fogFactor), 1.0);
}

void main() {
    vec4 color = texture(Sampler0, texCoord0) * vertexColor * ColorModulator;
    if (color.a < 0.1) discard;
    fragColor = apply_fog(color, sphericalVertexDistance, cylindricalVertexDistance, FogEnvironmentalStart, FogEnvironmentalEnd, FogRenderDistanceStart, FogRenderDistanceEnd, FogColor);
    if (vertexColor.a > 1) {
        Skybox sb = Skybox(0.0, vec3(0.0), vec2(0.0));
        sb.time = GameTime * 1000.00;
        sb.cartesian = normalize(vertexColor.rgb);
        sb.polar = vec2(acos(sb.cartesian.y / length(sb.cartesian)), sign(sb.cartesian.y) * acos(sb.cartesian.x / length(sb.cartesian.xz)));
        if (abs(vertexColor.a - 1.1) < 0.005) fragColor = skb1(sb);
        if (abs(vertexColor.a - 1.2) < 0.005) fragColor = skb2(sb);
    }
}