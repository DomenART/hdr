<template>
	<div>
		<header class="comprasion__header uk-flex uk-flex-between uk-flex-middle">
			<div class="comprasion__title">Какой стиль интерьера выберешь ты?</div>
			<a class="comprasion__select" :href="second.url">Выберите свой интерьер</a>
		</header>

		<div class="comprasion__arrows">
			<span uk-icon="icon: arrow-left"></span>
			<span uk-icon="icon: arrow-right"></span>
		</div>

		<figure class="comprasion">
			<img class="comprasion__main" :src="main.image" alt="">
			<img class="comprasion__second" :src="second.image" alt="">

			<span class="comprasion__label comprasion__label--main" v-show="!hideMainLabel">{{ main.name }}</span>
			<span class="comprasion__label comprasion__label--second" v-show="!hideSecondLabel">{{ second.name }}</span>

			<span class="comprasion__handle" @mousedown="down"></span>
		</figure>
	</div>
</template>

<style lang="less" scoped>
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
}

.comprasion__arrows {

}

.comprasion {
	position: relative;
	border-bottom: 1px solid #828281;
}

.comprasion__main {
	display: block;
	position: relative;
	-webkit-user-select: none;  
	-moz-user-select: none;    
	-ms-user-select: none;      
	user-select: none;
}

.comprasion__second {
	position: absolute;
	left: 0;
	right: 0;
	bottom: 0;
	top: 0;
	-webkit-user-select: none;  
	-moz-user-select: none;    
	-ms-user-select: none;      
	user-select: none;
}

.comprasion__label {
	position: absolute;
	bottom: 0;
	color: #cccccc;
	font-size: 16px;
	font-weight: 400;
	line-height: 1;
	padding: 12px;
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
</style>

<script>
	module.exports = {
		data () {
			return {
				main: {
					name: 'Original',
					image: 'assets/template/img/slide-1.jpg',
					url: ''
				},
				second: {
					name: 'Modified Image',
					image: 'assets/template/img/26566002706_73efdae8e4_o.jpg',
					url: ''
				},
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
			}
		}
	}
</script>
