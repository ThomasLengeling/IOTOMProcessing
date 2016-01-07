class BlockManager {
  ArrayList<Block> blocks;

  BlockManager() {
    blocks = new ArrayList<Block>();
  }

  void addBox(Block b){
    blocks.add(b);
  }

  void drawBlocks(PGraphics pg) {
    for (Block block : blocks) {
      pg.pushMatrix();
      pg.translate(block.getPosX(), block.getPosY(), block.getPosZ());
      block.drawBlock(pg);
      pg.popMatrix();
    }
  }
  
  
}