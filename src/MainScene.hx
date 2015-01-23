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
    if(Input.mouseDown){
      trace( Input.mouseX, Input.mouseY );
      if( left_button.collidePoint( left_button.x, left_button.y, Input.mouseX, Input.mouseY ) ){
        left_button.activate();
      }
    }else if(Input.mouseReleased){
      left_button.deactivate();
    }
    super.update();
  }

}