var gulp = require('gulp');
var server = require('gulp-server-livereload');
var childProcess = require('child_process');

gulp.task('default', ['build']);

gulp.task('dev', ['watch-build', 'serve']);

gulp.task('serve', function() {
  return gulp.src('./')
    .pipe(server());
});

gulp.task('build', function() {
  return childProcess.exec('texi2pdf src/resume.tex -o src/resume.pdf', function(err, stdout, stderr) {
    if(stdout != null && stdout != undefined && stdout != '')
      console.log('stdout: ' + stdout);

    if(stderr != null && stderr != undefined && stderr != '')
      console.log('stderr: ' + stderr);

    if(err !== null)
        console.log('exec error: ' + err);
  });
});

gulp.task('watch-build', ['build'], function() {
  gulp.watch(['src/resume.cls', 'src/resume.tex'], ['build']);
});