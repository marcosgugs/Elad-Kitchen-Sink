package com.adobe.flashx.textLayout.ui.styles
{
	import mx.skins.RectangularBorder;
	import mx.utils.GraphicsUtil;
	import flash.display.LineScaleMode;
	import flash.display.CapsStyle;

	public class ScrollbarThumbUpSkin extends RectangularBorder
	{
		public function ScrollbarThumbUpSkin()
		{
			super();
		}

		override public function get measuredWidth():Number
		{
			return 11;
		}

		override public function get measuredHeight():Number
		{
			return 10;
		}

		override protected function updateDisplayList(w:Number, h:Number):void
		{
			super.updateDisplayList(w, h);

			var thumbFill:uint = 0x222222;
			var thumbFillAlpha:Number = 1.0;
			var thumbStroke:uint = 0x2A2A2A;
			var thumbStrokeAlpha:Number = 1.0;

			var trackStroke:uint = 0x2A2A2A;
			var trackStrokeAlpha:Number = 1.0;

 			if (getStyle("thumbFill") != undefined)
				thumbFill = getStyle("thumbFill");
 			if (getStyle("thumbFillAlpha") != undefined)
				thumbFillAlpha = getStyle("thumbFillAlpha");
 			if (getStyle("thumbStroke") != undefined)
				thumbStroke = getStyle("thumbStroke");
 			if (getStyle("thumbStrokeAlpha") != undefined)
				thumbStrokeAlpha = getStyle("thumbStrokeAlpha");
 			if (getStyle("trackStroke") != undefined)
				trackStroke = getStyle("trackStroke");
 			if (getStyle("trackStrokeAlpha") != undefined)
				trackStrokeAlpha = getStyle("trackStrokeAlpha");

			graphics.clear();
			// draw the top line of the thumb to match the track
			graphics.lineStyle(1, trackStroke, trackStrokeAlpha);
			graphics.moveTo(0, 0);
			graphics.lineTo(w-1, 0);

			// fill in the thumb
			graphics.beginFill(thumbFill, thumbFillAlpha);
			graphics.drawRect(0, 0, w-1, h-2);
			graphics.endFill();

			// draw the border of the thumb
			graphics.lineStyle(1, thumbStroke, thumbStrokeAlpha);
			graphics.drawRect(0, 1, w-1, h-3);

			// draw the bottom line of the thumb to match the track
			graphics.lineStyle(1, trackStroke, trackStrokeAlpha);
			graphics.moveTo(0, h-1);
			graphics.lineTo(w, h-1);

		}
	}}