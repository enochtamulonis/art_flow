// postcss.config.js
let environment = {
  plugins: [
    require('tailwindcss')('./app/javascript/stylesheets/tailwind.config.js'),
    require('autoprefixer'),
  ]
};

module.exports = environment;
