# Generated on 2014-02-17 using generator-angular 0.7.1
"use strict"

# # Globbing
# for performance reasons we're only matching one level down:
# 'test/spec/{,*/}*.js'
# use this if you want to recursively match all subfolders:
# 'test/spec/**/*.js'
module.exports = (grunt) ->
  # Load grunt tasks automatically
  require("load-grunt-tasks") grunt

  # Time how long tasks take. Can help when optimizing build times
  require("time-grunt") grunt

  # Define the configuration for all the tasks
  grunt.initConfig
    # Project settings
    yeoman:
      # configurable paths
      app: "src"
      dist: "dist"


    # Watches files for changes and runs tasks based on the changed files
    watch:
      sass:
        files: ["<%= yeoman.app %>/{,*/}*.scss"]
        tasks: [
          "sass:server"
          "autoprefixer"
        ]
      less:
        files: ["<%= yeoman.app %>/less/*.less"]
        tasks: [
          "less:server"
          "autoprefixer"
        ]
      gruntfile:
        files: ["Gruntfile.js"]

      livereload:
        options:
          livereload: "<%= connect.options.livereload %>"

        files: [
          "<%= yeoman.app %>/{,*/}*.html"
          ".tmp/styles/{,*/}*.css"
          ".tmp/scripts/{,*/}*.js"
          "<%= yeoman.app %>/images/{,*/}*.{png,jpg,jpeg,gif,webp,svg}"
        ]


    # The actual grunt server settings
    connect:
      options:
        port: 9000

        # Change this to '0.0.0.0' to access the server from outside.
        hostname: "localhost"
        livereload: 35729

      livereload:
        options:
          open: true
          base: [
            ".tmp"
            "<%= yeoman.app %>"
          ]

      dist:
        options:
          base: "<%= yeoman.dist %>"


    # Empties folders to start fresh
    clean:
      dist:
        files: [
          dot: true
          src: [
            ".tmp"
            "<%= yeoman.dist %>/*"
            "!<%= yeoman.dist %>/.git*"
          ]
        ]

      server: ".tmp"


    # Add vendor prefixed styles
    autoprefixer:
      options:
        browsers: ["last 1 version"]

      dist:
        files: [
          expand: true
          cwd: ".tmp/styles/"
          src: "{,*/}*.css"
          dest: ".tmp/styles/"
        ]


    # Compiles Sass to CSS and generates necessary files if requested
    sass:
      server:
        files:
          ".tmp/brand-buttons.css": "<%= yeoman.app %>/brand-buttons.scss"
          ".tmp/brand-buttons-inversed.css": "<%= yeoman.app %>/brand-buttons-inversed.scss"

      dist:
        files:
          "dist/brand-buttons.css": "<%= yeoman.app %>/brand-buttons.scss"
          "dist/brand-buttons-inversed.css": "<%= yeoman.app %>/brand-buttons-inversed.scss"
      min:
        options:
          outputStyle: "compressed"
        files:
          "dist/brand-buttons.min.css": "<%= yeoman.app %>/brand-buttons.scss"
          "dist/brand-buttons-inversed.min.css": "<%= yeoman.app %>/brand-buttons-inversed.scss"
    # Compiles LESS to CSS and generates necessary files if requested
    less:
      server:
        files:
          ".tmp/brand-buttons.css": "<%= yeoman.app %>/less/brand-buttons.less"
          ".tmp/brand-buttons-inversed.css": "<%= yeoman.app %>/less/brand-buttons-inversed.less"

      dist:
        options:
          sourceComments: "none"

        files:
          "dist/brand-buttons.css": "<%= yeoman.app %>/less/brand-buttons.less"
          "dist/brand-buttons-inversed.css": "<%= yeoman.app %>/less/brand-buttons-inversed.less"
      min:
        options:
          compress: true
        files:
          "dist/brand-buttons.min.css": "<%= yeoman.app %>/less/brand-buttons.less"
          "dist/brand-buttons-inversed.min.css": "<%= yeoman.app %>/less/brand-buttons-inversed.less"

    # Run some tasks in parallel to speed up the build process
    # You can choose LESS or SASS:
    # SASS -> server: ["sass:server"]
    #      -> dist: ["sass:dist", "sass:min"]
    # LESS -> server: ["less:server"]
    #      -> dist: ["less:dist", "less:min"]
    # By default run deploy for SASS
    concurrent:
      server: ["sass:server"]
      dist: ["sass:dist", "sass:min"]

  grunt.registerTask "serve", (target) ->
    if target is "dist"
      return grunt.task.run([
        "build"
        "connect:dist:keepalive"
      ])
    grunt.task.run [
      "clean:server"
      "concurrent:server"
      "autoprefixer"
      "connect:livereload"
      "watch"
    ]
    return

  grunt.registerTask "build", [
    "clean:dist"
    "concurrent:dist"
    "autoprefixer"
    # "copy:dist"
  ]
  grunt.registerTask "default", [
    "build"
  ]
  return