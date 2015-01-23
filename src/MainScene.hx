import com.haxepunk.Scene;
import com.haxepunk.utils.Input;

class MainScene extends Scene
{

  private var left_button:Button;
  private var right_button:Button;

	public override function begin()
	{
    /*
      Create two buttons for testing
     */
    left_button = new Button();
    right_button = new Button();


    /*
      Add the buttons to this scene
      http://haxepunk.com/documentation/api/com/haxepunk/Scene.html#add
     */
    add( left_button );
    add( right_button );

    // position the buttons
    left_button.x = 150;
    left_button.y = 150;

    right_button.x = 350;
    right_button.y = 150;

	}

  public override function update():Void
  {

    handleInput();
    
    super.update();
  }

  /*
    Handle Mouse Input
    http://haxepunk.com/documentation/api/com/haxepunk/utils/Input.html
   */
  private inline function handleInput():Void
  {
    // http://haxepunk.com/documentation/api/com/haxepunk/utils/Input.html#mousePressed
    if(Input.mouseDown){

      /*
        Check for collisions, make sure the Entity called setHitbox()
        http://haxepunk.com/documentation/api/com/haxepunk/Entity.html#collidePoint
       */
      if( left_button.collidePoint( left_button.x, left_button.y, Input.mouseX, Input.mouseY ) ){
        left_button.activate();
      }
      if( right_button.collidePoint( right_button.x, right_button.y, Input.mouseX, Input.mouseY ) ){
        right_button.activate();
      }

    }else if(Input.mouseUp){
      // http://haxepunk.com/documentation/api/com/haxepunk/utils/Input.html#mouseUp
      
      left_button.deactivate();
      right_button.deactivate();
      
    }
  }

}