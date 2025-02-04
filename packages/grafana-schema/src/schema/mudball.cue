package schema

// Use this file as a big TODO list - if it's still in here, it's a TODO to
// separate it out into a discrete file.

TableSortByFieldState: {
	displayName: string
	desc?:       bool
} @cuetsy(targetType="interface")

SingleStatBaseOptions: {
	OptionsWithTextFormatting
	reduceOptions: ReduceDataOptions
	orientation:   VizOrientation
} @cuetsy(targetType="interface")
// TODO copy back to appropriate place
ReduceDataOptions: {
	// If true show each row value
	values?: bool
	// if showing all values limit
	limit?: number
	// When !values, pick one value for the whole field
	calcs: [...string]
	// Which fields to show.  By default this is only numeric fields
	fields?: string
} @cuetsy(targetType="interface")
// TODO copy back to appropriate place
VizOrientation: "auto" | "vertical" | "horizontal" @cuetsy(targetType="enum")
// TODO copy back to appropriate place
OptionsWithTooltip: {
	// FIXME this field is non-optional in the corresponding TS type
	tooltip?: VizTooltipOptions
} @cuetsy(targetType="interface")
// TODO copy back to appropriate place
OptionsWithLegend: {
	// FIXME this field is non-optional in the corresponding TS type
	legend?: VizLegendOptions
} @cuetsy(targetType="interface")
// TODO copy back to appropriate place
OptionsWithTextFormatting: {
	text?: VizTextDisplayOptions
} @cuetsy(targetType="interface")
// TODO copy back to appropriate place
BigValueColorMode: "value" | "background" | "none" @cuetsy(targetType="enum")
// TODO copy back to appropriate place
BigValueGraphMode: "none" | "line" | "area" @cuetsy(targetType="enum")
// TODO copy back to appropriate place
BigValueJustifyMode: "auto" | "center" @cuetsy(targetType="enum")
// TODO copy back to appropriate place
// TODO does cuetsy handle underscores the expected way?
BigValueTextMode: "auto" | "value" | "value_and_name" | "name" | "none" @cuetsy(targetType="enum")
// TODO copy back to appropriate place
BarGaugeDisplayMode: "basic" | "lcd" | "gradient" @cuetsy(targetType="enum")
