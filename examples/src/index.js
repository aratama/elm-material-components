import "./main.css";
import { Elm } from "./Main.elm";
import * as serviceWorker from "./serviceWorker";
import "regenerator-runtime/runtime";
import "@material/mwc-button";
import "@material/mwc-textfield";
import "@material/mwc-checkbox";

Elm.Main.init({
  node: document.getElementById("root"),
});

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
serviceWorker.unregister();