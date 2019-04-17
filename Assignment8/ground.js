//inheritance - ground extends box
class Ground extends Box {
    constructor(x,y,w,h){
        super(x,y,w,h);
        //must be static
        this.body.isStatic = true;
    }
}