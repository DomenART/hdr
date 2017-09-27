<template>
	<figure class="cd-image-container">
		<img src="assets/template/img/slide-1.jpg" alt="Original Image">
		<span class="cd-image-label" data-type="original">Original</span>
		
		<div class="cd-resize-img">
			<img src="assets/template/img/26566002706_73efdae8e4_o.jpg" alt="Modified Image">
			<span class="cd-image-label" data-type="modified">Modified</span>
		</div>
		
		<span class="cd-handle"></span>
	</figure>
</template>

<style lang="less" scoped>
.cd-image-container {
	position: relative;
}
.cd-image-container img {
	display: block;
}

.cd-image-label {
	position: absolute;
	bottom: 0;
	right: 0;
	color: #ffffff;
	padding: 1em;
	opacity: 0;
	transform: translateY(20px);
	transition: transform 0.3s 0.7s, opacity 0.3s 0.7s;
	&.is-hidden {
		visibility: hidden;
	}
	.is-visible & {
		opacity: 1;
		transform: translateY(0);
	}
}

.cd-resize-img {
	position: absolute;
	top: 0;
	left: 0;
	width: 0;
	height: 100%;
	overflow: hidden;
	/* Force Hardware Acceleration in WebKit */
	transform: translateZ(0);
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	img {
		position: absolute;
		left: 0;
		top: 0;
		display: block;
		height: 100%;
		width: auto;
		max-width: none;
	}
	.cd-image-label {
		right: auto;
		left: 0;
	}
	.is-visible & {
		width: 50%;
		/* bounce in animation of the modified image */
		animation: cd-bounce-in 0.7s;
	}
}

@keyframes cd-bounce-in {
	0% {
		width: 0;
	}
	60% {
		width: 55%;
	}
	100% {
		width: 50%;
	}
}
.cd-handle {
	position: absolute;
	height: 44px;
	width: 44px;
	/* center the element */
	left: 50%;
	top: 50%;
	margin-left: -22px;
	margin-top: -22px;
	border-radius: 50%;
	background: #dc717d;
	cursor: move;
	box-shadow: 0 0 0 6px rgba(0, 0, 0, 0.2), 0 0 10px rgba(0, 0, 0, 0.6), inset 0 1px 0 rgba(255, 255, 255, 0.3);
	opacity: 0;
	transform: translate3d(0, 0, 0) scale(0);
	&.draggable {
		/* change background color when element is active */
		background-color: #445b7c;
	}
	.is-visible & {
		opacity: 1;
		transform: translate3d(0, 0, 0) scale(1);
		transition: transform 0.3s 0.7s, opacity 0s 0.7s;
	}
}
</style>

<script>
	module.exports = {
		data: function() {
			return {
				greeting: 'Привет'
			}
		},

		mounted () {
			// $('.cd-image-container').each(function(){
			// var actual = $(this);
			// drags(actual.find('.cd-handle'), actual.find('.cd-resize-img'), actual);
			// });
			this.drags($('.cd-handle', this.$el), $('.cd-resize-img', this.$el), this.$el)
		},

		methods: {
			drags (dragElement, resizeElement, container) {
			    dragElement.on("mousedown vmousedown", function(e) {
			        dragElement.addClass('draggable');
			        resizeElement.addClass('resizable');
			 
			        var dragWidth = dragElement.outerWidth(),
			            xPosition = dragElement.offset().left + dragWidth - e.pageX,
			            containerOffset = container.offset().left,
			            containerWidth = container.outerWidth(),
			            minLeft = containerOffset + 10,
			            maxLeft = containerOffset + containerWidth - dragWidth - 10;
			        
			        dragElement.parents().on("mousemove vmousemove", function(e) {
			            leftValue = e.pageX + xPosition - dragWidth;
			            
			            //constrain the draggable element to move inside its container
			            if(leftValue < minLeft ) {
			                leftValue = minLeft;
			            } else if ( leftValue > maxLeft) {
			                leftValue = maxLeft;
			            }
			 
			            widthValue = (leftValue + dragWidth/2 - containerOffset)*100/containerWidth+'%';
			            
			            $('.draggable').css('left', widthValue).on("mouseup vmouseup", function() {
			                $(this).removeClass('draggable');
			                resizeElement.removeClass('resizable');
			            });
			 
			            $('.resizable').css('width', widthValue); 
			 
			            //function to upadate images label visibility here
			            // ...
			            
			        }).on("mouseup vmouseup", function(e){
			            dragElement.removeClass('draggable');
			            resizeElement.removeClass('resizable');
			        });
			        e.preventDefault();
			    }).on("mouseup vmouseup", function(e) {
			        dragElement.removeClass('draggable');
			        resizeElement.removeClass('resizable');
			    });
			}
		}
	}
</script>