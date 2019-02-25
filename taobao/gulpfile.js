const gulp=require('gulp');//引入插件
const gulpsass=require('gulp-sass');
const uglify=require('gulp-uglify');

gulp.task('taskname',function(){
	return console.log('hello gulp')
});
//复制文件
gulp.task('copyfile',function(){
	return gulp.src('src/*.html').pipe(gulp.dest('dist/'));
})
//sass-编译
gulp.task('sass',function(){
	return gulp.src('src/sass/index.scss')
	.pipe(gulpsass({outputstyle:'compressed'}))
	.pipe(gulp.dest('dist/css/'))
})
//压缩js
gulp.task('alljs',function(){
	return gulp.src('src/js/cookie.js')
	.pipe(uglify())
	.pipe(gulp.dest('dist/js/'))
})
