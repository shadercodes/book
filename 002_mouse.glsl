
#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

float nSin(float time){
    return(1.+sin(time))/2.;
}

void main(){
    vec2 surface=gl_FragCoord.xy/u_resolution;
    vec2 mx =  u_mouse/u_resolution;
    vec2 map = vec2(mx.x,mx.y);
    gl_FragColor=vec4(map.x,map.y,0.,1.);
}