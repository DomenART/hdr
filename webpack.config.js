const webpack = require('webpack');
const path = require('path');
const ExtractTextPlugin = require("extract-text-webpack-plugin");

const PATHS = {
	source: path.join(__dirname, 'src/'),
	build: path.join(__dirname, 'public/assets/template/')
}

// Enviroment flag
var env = process.env.WEBPACK_ENV;
var plugins = [];

// Differ settings based on production flag
if (env === 'production') {
  var UglifyJsPlugin = webpack.optimize.UglifyJsPlugin;

  plugins.push(new UglifyJsPlugin({ minimize: true }));
  plugins.push(new webpack.DefinePlugin({
      'process.env': {
        NODE_ENV: '"production"'
      }
    }
  ));
}

// Main Settings config
module.exports = {
	entry: PATHS.source + 'js/main.js',
	output: {
		path: PATHS.build,
		filename: '[name].js'
	},
	module: {
		rules: [{
			test: /\.vue$/,
			loader: 'vue-loader',
			options: {
				extractCSS: true
			}
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
			test: /\.js$/,
			loader: 'babel-loader',
			exclude: /node_modules/,
			query: {
				presets: ['es2015']
			}
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

	resolve: {
		alias: {
			'vue$': 'vue/dist/vue.esm.js',
            'jquery': 'jquery/src/jquery'
		}
	},

	plugins: (plugins || []).concat([
		new ExtractTextPlugin('[name].css')
	])
		
};