import com.haxepunk.Entity;
import com.haxepunk.graphics.Image;


class Button extends Entity
{
  private var shape_image_off:Image;
  private var shape_image_on:Image;

  public function new()
  {
    super();

    /*
      Create a new Image graphic
      http://haxepunk.com/documentation/api/com/haxepunk/graphics/Image.html#createRect
     */
    shape_image_off = Image.createRect( 100, 100, 0xEEDD33 );
    shape_image_on  = Image.createRect( 100, 100, 0x3399FF );

    /*
      Set the Entity.graphic to the new image
      http://haxepunk.com/documentation/api/com/haxepunk/Entity.html#graphic
     */
    this.graphic = shape_image_off;

    /*
      set the hitbox dimensions of this Entity
      if you forget to call this function, collisions will not register
      (this entity will not be clickable)
      http://haxepunk.com/documentation/api/com/haxepunk/Entity.html#setHitbox
     */
    this.setHitbox( shape_image_off.width, shape_image_off.height );

  }

  public function activate()
  {
    this.graphic = shape_image_on;
  }
  public function deactivate()
  {
    this.graphic = shape_image_off;
  }

}