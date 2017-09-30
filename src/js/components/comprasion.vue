<template>
	<div>
		<header class="comprasion__header uk-flex uk-flex-between uk-flex-middle">
			<div class="comprasion__title">Какой стиль интерьера выберешь ты?</div>
			<a class="comprasion__select" :href="images[second].url">Выберите свой интерьер</a>
		</header>

		<div class="comprasion__arrows">
			<span></span>
			<span></span>
		</div>

		<figure class="comprasion">
			<div class="comprasion__wrap">
				<div class="comprasion__main">
					<img :src="images[main].image" alt="">
				</div>
				<div class="comprasion__second">
					<img :src="images[second].image" alt="">
				</div>
			</div>

			<span class="comprasion__label comprasion__label--main" v-show="!hideMainLabel">{{ images[main].name }}</span>
			<span class="comprasion__label comprasion__label--second" v-show="!hideSecondLabel">{{ images[second].name }}</span>

			<span class="comprasion__handle" @mousedown="down"></span>
		</figure>

		<div class="comprasion-carousel uk-grid uk-child-width-1-4">
			<div v-for="(item, index) in images" :class="'comprasion-carousel__item' + (index==main?' active':'')" @click="setMain(index)">
				<div class="comprasion-carousel__image"><img :src="item.image" alt=""></div>
				<div class="comprasion-carousel__title" v-html="item.name"></div>
			</div>
		</div>
	</div>
</template>

<script>
	module.exports = {
		props: ['initialImages'],

		data () {
			return {
				images: JSON.parse(this.initialImages),
				main: 0,
				second: 1,
				hideMainLabel: false,
				hideSecondLabel: false
			}
		},

		mounted () {
			this.updateClip()
		},

		computed: {
			container () {
				return this.$el.querySelector('.comprasion')
			},

			mainImage () {
				return this.container.querySelector('.comprasion__main')
			},

			secondImage () {
				return this.container.querySelector('.comprasion__second')
			},

			mainLabel () {
				return this.container.querySelector('.comprasion__label--main')
			},

			secondLabel () {
				return this.container.querySelector('.comprasion__label--second')
			},

			mainLabelWidth () {
				return this.mainLabel.offsetWidth
			},

			secondLabelWidth () {
				return this.secondLabel.offsetWidth
			},

			handle () {
				return this.container.querySelector('.comprasion__handle')
			}
		},

		methods: {
			updateClip (coords) {
				coords = coords || this.clipCoords()

				this.secondImage.style.clip = "rect(0, " + coords.x + "px, " + coords.y + "px, 0)"
				this.hideMainLabel = coords.x > this.container.offsetWidth - this.mainLabelWidth
				this.hideSecondLabel = this.secondLabelWidth > coords.x
			},

			down () {
	      		document.addEventListener('mousemove', this.move)
      			document.addEventListener('mouseup', this.up)
			},

			up () {
      			document.removeEventListener('mousemove', this.move)
      			document.removeEventListener('mouseup', this.up)
			},

			move (e) {
				let left = e.clientX - this.container.offsetLeft

				if(left < 0) left = 0
				if(left > this.container.offsetWidth) left = this.container.offsetWidth

				this.handle.style.left = left + 'px'

				this.updateClip({
					x: left,
					y: this.mainImage.offsetHeight
				})
			},

			clipCoords () {
				let left = this.handle.getBoundingClientRect().left - this.container.getBoundingClientRect().left

				return {
					x: left + (this.handle.offsetWidth / 2),
					y: this.mainImage.offsetHeight
				}
			},

			setMain (index) {
				if(index == this.main) return

				/**
				 * Анимация перехода для основного изображния
				 */
				let mainImageMask = document.createElement('img')
				this.mainImage.appendChild(mainImageMask)
				mainImageMask.onload = () => {
					fade.out(mainImageMask, () => {
						mainImageMask.parentNode.removeChild(mainImageMask)
					})
				}
				mainImageMask.src = this.images[this.main].image

				/**
				 * Анимация перехода для второстепенного изображния 
				 */
				let secondImageMask = document.createElement('img')
				this.secondImage.appendChild(secondImageMask)
				secondImageMask.onload = () => {
					fade.out(secondImageMask, () => {
						secondImageMask.parentNode.removeChild(secondImageMask)
					})
				}
				secondImageMask.src = this.images[this.second].image

				this.second = this.main
				this.main = index
			},


		}
	}
</script>

<style lang="less">
.comprasion__header {
}

.comprasion__title {
	color: #fefefe;
	font-family: 'Museo Sans', sans-serif;
	font-size: 24px;
	font-weight: 500;
	line-height: 1;
}

.comprasion__select {
	color: #cccccc;
	font-size: 18px;
	font-weight: 400;
	line-height: 1;
	text-decoration: none;
	&:hover {
		color: #fff;
		text-decoration: none;
	}
}

.comprasion__arrows {
	text-align: center;
	span {
		width: 32px;
		height: 21px;
		display: inline-block;
		&:first-child {
			background: url('../../img/icon-arrow-left.svg') no-repeat 50% 50%;
		}
		&:last-child {
			background: url('../../img/icon-arrow-right.svg') no-repeat 50% 50%;
		}
	}
}

.comprasion {
	position: relative;
	border-bottom: 1px solid #828281;
}

.comprasion__wrap {
	position: relative;
	width: 1200px;
	height: 460px;
}

.comprasion__second,
.comprasion__main {
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	img {
		position: absolute;
		left: 0;
		top: 0;
		width: 100%;
		height: 100%;
		-webkit-user-select: none;  
		-moz-user-select: none;    
		-ms-user-select: none;      
		user-select: none;
	}
}

.comprasion__label {
	position: absolute;
	bottom: 0;
	color: #cccccc;
	font-size: 16px;
	font-weight: 400;
	line-height: 1;
	padding: 12px;
	-webkit-user-select: none;  
	-moz-user-select: none;    
	-ms-user-select: none;      
	user-select: none;
	&--main {
		right: 0;
	}
	&--second {
		left: 0;
	}
}

.comprasion__handle {
	position: absolute;
	width: 18px;
	height: 100%;
	left: 50%;
	top: 0;
	margin-left: -9px;
	cursor: move;
	&:hover {
		&:after {
			background-color: darken(#d3924d, 10%);
		}
	}
	&:after {
		content: '';
		position: absolute;
		left: 0;
		top: -15px;
		width: 100%;
		height: 18px;
		border-radius: 2px;
		background-color: #d3924d;
	}
	&:before {
		content: '';
		left: 50%;
		top: 0;
		width: 1px;
		height: 100%;
		background-color: #cccccc;
		position: absolute;
	}
}

.comprasion-carousel {
	cursor: pointer;
}

.comprasion-carousel__item {
	&:hover,
	&.active {
		opacity: 1;
		.comprasion-carousel__image img {
			opacity: 1;
		}
		.comprasion-carousel__title {
			color: #fff;
		}
	}
}

.comprasion-carousel__image {
	display: block;
	width: 100%;
	margin-bottom: 10px;
	background: #000;
	img {
		opacity: .4;
		transition: all ease .3s;
	}
}

.comprasion-carousel__title {
	color: #cccccc;
	font-size: 16px;
	line-height: 1.5;
}
</style>
