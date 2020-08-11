import "./main.css";
import { Elm } from "./Main.elm";
import * as serviceWorker from "./serviceWorker";
import "regenerator-runtime/runtime";
import "@material/mwc-button";
import "@material/mwc-textfield";
import "@material/mwc-checkbox";
import "@material/mwc-circular-progress";
import "@material/mwc-circular-progress-four-color";
import "@material/mwc-dialog";
import "@material/mwc-drawer";
import "@material/mwc-fab";
import "@material/mwc-formfield";
import "@material/mwc-icon";
import "@material/mwc-icon-button";
import "@material/mwc-icon-button-toggle";
import "@material/mwc-linear-progress";
import "@material/mwc-list";
import "@material/mwc-list/mwc-list-item";
import "@material/mwc-menu";
import "@material/mwc-select";
import "@material/mwc-radio";
import "@material/mwc-slider";
import "@material/mwc-snackbar";
import "@material/mwc-switch";
import "@material/mwc-tab";
import "@material/mwc-tab-bar";
import "@material/mwc-textarea";
import "@material/mwc-top-app-bar";
import "@material/mwc-top-app-bar-fixed";
import "@material/mwc-textfield";

const elm = Elm.Main.init({
  node: document.getElementById("root"),
});

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
serviceWorker.unregister();

elm.ports.showSnackbar.subscribe((selector) => {
  document.querySelector(selector).show();
});
