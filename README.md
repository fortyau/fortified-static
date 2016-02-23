## Setup
````
npm install
bower install
gulp
````

### Markup
#### Included Precompilers
- Jade

---

### Scripting

Any coffee script included in scripts will be compiled and concatenated with script.js

#### Included Precompilers
- Coffee

#### Included Libraries
- jQuery
-

---

### Styling
#### Included Precompilers
- SCSS/SASS

#### Build Tasks
- gulp-autoprefixer

#### Included Libraries:
- (http://purecss.io/)[purecss.io]

#### Usage Notes:
- Uncomment what you need for PureCSS grids, etc...

---
### Misc
#### Favicons
- Add `icon.png` to `src/images/favicon` (Minimum 260px * 260px)
- Run `gulp generate-favicon`
