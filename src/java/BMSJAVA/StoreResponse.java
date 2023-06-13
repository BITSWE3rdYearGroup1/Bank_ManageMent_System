package BMSJAVA;



public class StoreResponse {
    private boolean exist;
    private boolean stored;
  public StoreResponse(boolean exist,boolean stored){
      this.stored =stored;
      this.exist = exist;
  }
    public boolean isExist() {
        return exist;
    }

    public void setExist(boolean exist) {
        this.exist = exist;
    }

    public boolean isStored() {
        return stored;
    }

    public void setStored(boolean stored) {
        this.stored = stored;
    }
}
