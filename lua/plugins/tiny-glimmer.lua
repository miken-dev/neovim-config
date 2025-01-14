return {
	"rachartier/tiny-glimmer.nvim",
	event = "TextYankPost",
	opts = {
		default_animation = "left_to_right",
	},
	animations = {
		left_to_right = {
			max_duration = 550,
			chars_for_max_duration = 20,
		}
	},
}
