class BlockManager {
  ArrayList<Block> blocks;

  BlockManager() {
    blocks = new ArrayList<Block>();
  }

  void addBox(float x, float y, float z) {
    blocks.add(new Block(x, y, z));
  }

  void drawBlocks(PGraphics pg) {
    for (Block block : blocks) {
      block.drawBlock(pg);
    }
  }
  
  
}