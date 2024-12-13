/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.{html,js,jsp}"],
  theme: {
    extend: {

      colors: {
        "custom-gray-900": "#191c1e",
        "custom-gray-700": "#475156",
        "custom-gray-600": "#5F6C72",
        "custom-gray-500": "#77878F",
        "custom-gray-400": "#929FA5",
        "custom-gray-300": "#adb7bc",
        "custom-gray-100": "#E4E7E9",
        "custom-gray-50": "#F2F4F5",
        "custom-gray-00": "#FFFFFF",
        "primary-500": "#FA8232",
        "secondary-700": "#1B6392",
        "secondary-500": "#2DA5F3",
        "warning-500": "#EBC80C",
        "warning-100": "#FBF4CE"
      },

      fontFamily: {
        'main': [
          'Public Sans'
          
        ],
      },

      


    },
  },
  plugins: [],
}

