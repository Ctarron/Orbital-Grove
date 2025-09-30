#version 330

#moj_import <minecraft:light.glsl>
#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in vec2 UV1;
in ivec2 UV2;
in vec3 Normal;

uniform sampler2D Sampler0;
uniform sampler2D Sampler2;


out float sphericalVertexDistance;
out float cylindricalVertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;
out vec2 texCoord1;
out vec2 texCoord2;

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
    sphericalVertexDistance = fog_spherical_distance(Position);
    cylindricalVertexDistance = fog_cylindrical_distance(Position);
    vertexColor = minecraft_mix_light(Light0_Direction, Light1_Direction, Normal, Color) * texelFetch(Sampler2, UV2 / 16, 0);
    

    vec4 texColor = texture(Sampler0, UV0);
    
    vec4 skb1 = vec4(52., 38., 12., 133.) / 255.;
    vec4 skb2 = vec4(12., 52., 27., 133.) / 255.;

    if (texColor == skb1) {
        vertexColor.a = 1.1;
        vertexColor.rgb = Position;
    } else if (texColor == skb2) {
        vertexColor.a = 1.2;
        vertexColor.rgb = Position;
    }

    texCoord0 = UV0;
    texCoord1 = UV1;
    texCoord2 = UV2;
}