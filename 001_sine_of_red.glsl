
#ifdef GL_ES
precision mediump float;
#endif

uniform float u_time;

float nSin(float time){
    return(1.+sin(time))/2.;
}

void main(){
    float speed=5.;
    float red=nSin(u_time*speed);
    
    gl_FragColor=vec4(red,0.,0.,1.);
}