<template>
	<div>
		{{ greeting }}
	</div>
</template>

<style lang="less" scoped>
	div {
		color: green;
		font-size: 36px;
	}
</style>

<script>
	module.exports = {
		data: function() {
			return {
				greeting: 'Привет'
			}
		}
	}
</script>