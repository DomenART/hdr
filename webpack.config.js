const path = require('path');
const ExtractTextPlugin = require("extract-text-webpack-plugin");

const PATHS = {
	source: path.join(__dirname, 'src/'),
	build: path.join(__dirname, 'public/assets/template/')
}

module.exports = {
	entry: PATHS.source + 'js/main.js',
	output: {
		path: PATHS.build,
		filename: '[name].js'
	},
	module: {
		rules: [{
			test: /\.js$/,
			loader: 'babel-loader',
			query: {
				presets: ['es2015']
			}
		}, {
			test: /\.vue$/,
			loader: 'vue-loader'
		}, {
			test: /\.less$/,
			use: ExtractTextPlugin.extract({
				fallback: "style-loader",
				use: [{
					loader: "css-loader"
				}, {
					loader: "less-loader"
				}]
			})
		}, {
			test: /\.(png|jpg|gif|svg)$/,
			use: [{
				loader: 'file-loader',
				options: {
					name: '[name].[ext]?[hash]',
					outputPath: 'img/'
				}
			}]
		}, {
			test: /\.(eot|woff|ttf|otf)$/,
			use: [{
				loader: 'file-loader',
				options: {
					name: '[name].[ext]?[hash]',
					outputPath: 'fonts/'
				}
			}]
		}]
	},

	watch: true,

	plugins: [
		new ExtractTextPlugin('[name].css')
	]
};