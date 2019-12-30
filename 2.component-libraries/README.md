# Creating a Component Library

Currently, we only support Svelte (V3) as a framework for creating frontend components. In future, we will aim to support more frontend frameworks. Please [raise an issue](https://github.com/Budibase/budibase/issues) to request a compatible framework.

## Overview

![custom-components-overview](./custom-components-overview.png)

Your component library will export

- A `components.json` file, describing all the libraries components
- A bundled javascript file, containing your components (`index.js` in the above example)
