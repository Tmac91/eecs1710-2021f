PShader shader;

void setup() {
  size(640, 480, P2D);

  setupCapture(0);

  shader = loadShader("example.glsl");
  shader.set("resolution", float(width), float(height));
  shader.set("depth", 1.0);
  shader.set("rate", 1.0);
}

void draw() {
  background(0);
  
  image(videoImg, 0, 0);
  
  shader.set("time", float(millis())/1000.0);
  filter(shader);
}