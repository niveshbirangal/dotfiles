show_band() { # This function name must match the module name!
  local index icon color text module

  CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  index=$1 # This variable is used internally by the module loader in order to know the position of this module

  # icon="$(  get_tmux_option "@catppuccin_band_icon"  ""           )"
  color="$( get_tmux_option "@catppuccin_band_color" "#FFFFE0" )"
  text="$(  get_tmux_option "@catppuccin_band_text"  "#( $CURRENT_DIR/scripts/network.sh )" )"

  module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}
