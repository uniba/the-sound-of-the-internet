{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 216.0, 44.0, 1023.0, 726.0 ],
		"bglocked" : 0,
		"defrect" : [ 216.0, 44.0, 1023.0, 726.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Created by Arvid Tomayko-Peters at Your Heaven, LLC",
					"id" : "obj-60",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 654.0, 10.0, 307.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser http://arvidtp.net",
					"linecount" : 3,
					"hidden" : 1,
					"id" : "obj-68",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 788.0, 58.0, 124.0, 46.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"presentation_rect" : [ 824.0, 72.0, 0.0, 0.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"text" : "arvid@arvidtp.net",
					"id" : "obj-67",
					"fontname" : "Arial",
					"numoutlets" : 4,
					"patching_rect" : [ 785.0, 32.0, 141.0, 19.0 ],
					"outlettype" : [ "", "int", "", "" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"id" : "obj-64",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"patching_rect" : [ 656.0, 54.0, 126.0, 20.0 ],
					"outlettype" : [ "", "", "int" ],
					"text" : "http://arvidtp.net",
					"rounded" : 8.0,
					"fontsize" : 12.0,
					"align" : 0,
					"presentation_rect" : [ 739.0, 55.0, 0.0, 0.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"id" : "obj-63",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"patching_rect" : [ 656.0, 32.0, 126.0, 20.0 ],
					"outlettype" : [ "", "", "int" ],
					"text" : "http://yourheaven.net",
					"rounded" : 8.0,
					"fontsize" : 12.0,
					"align" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser http://yourheaven.net",
					"linecount" : 3,
					"hidden" : 1,
					"id" : "obj-57",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 656.0, 76.0, 124.0, 46.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Don't use Nagle's Algo (default)",
					"linecount" : 2,
					"id" : "obj-53",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 858.0, 345.0, 150.0, 34.0 ],
					"fontsize" : 12.0,
					"presentation_rect" : [ 831.0, 456.0, 0.0, 0.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Use Nagle's Algo",
					"id" : "obj-48",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 858.0, 380.0, 150.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r totcpClient",
					"id" : "obj-46",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 286.0, 418.0, 75.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s totcpClient",
					"id" : "obj-44",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 774.0, 523.0, 77.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "newline only ( \\n )",
					"id" : "obj-40",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 871.0, 240.0, 105.0, 20.0 ],
					"fontsize" : 12.0,
					"presentation_rect" : [ 843.0, 353.0, 0.0, 0.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "carriage-return newline ( \\r\\n ) (default)",
					"linecount" : 2,
					"id" : "obj-37",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 870.0, 201.0, 138.0, 34.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "get/set noDelay (Nagle's Algorhithm)",
					"linecount" : 2,
					"id" : "obj-80",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 774.0, 290.0, 123.0, 34.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "get/set line endings",
					"id" : "obj-79",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 774.0, 161.0, 114.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "lineEnding rn",
					"id" : "obj-77",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 774.0, 203.0, 96.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"bgcolor" : [ 0.278431, 0.921569, 0.639216, 1.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "lineEnding n",
					"id" : "obj-76",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 774.0, 241.0, 96.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"bgcolor" : [ 0.278431, 0.921569, 0.639216, 1.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "get lineEnding",
					"id" : "obj-75",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 774.0, 180.0, 94.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"bgcolor" : [ 0.278431, 0.921569, 0.639216, 1.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "setNoDelay 0",
					"id" : "obj-74",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 774.0, 347.0, 83.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"bgcolor" : [ 0.835294, 0.858824, 0.541176, 1.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "setNoDelay 1",
					"id" : "obj-73",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 774.0, 381.0, 83.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"bgcolor" : [ 0.835294, 0.858824, 0.541176, 1.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getNoDelay",
					"id" : "obj-71",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 774.0, 324.0, 73.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"bgcolor" : [ 0.835294, 0.858824, 0.541176, 1.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Other Options:",
					"id" : "obj-33",
					"fontname" : "Arial Bold",
					"numoutlets" : 0,
					"patching_rect" : [ 758.0, 140.0, 95.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "for testing:",
					"id" : "obj-31",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 253.0, 628.0, 67.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "for testing:",
					"id" : "obj-28",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 71.0, 628.0, 67.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ms",
					"id" : "obj-6",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 835.0, 453.0, 26.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Connection Attempt Timeout (default 4000)",
					"linecount" : 2,
					"id" : "obj-18",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 774.0, 417.0, 131.0, 34.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "timeOut",
					"id" : "obj-13",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 774.0, 452.0, 62.0, 20.0 ],
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 12.0,
					"bgcolor" : [ 1.0, 0.360784, 0.360784, 1.0 ],
					"minimum" : 100,
					"maximum" : 60000,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "timeout $1",
					"id" : "obj-51",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 774.0, 478.0, 67.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"bgcolor" : [ 1.0, 0.360784, 0.360784, 1.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "will send out messages about connection errors/problems/successes",
					"id" : "obj-8",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 310.0, 544.0, 376.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Tested on Windows XP and Mac OS X 10.5, Max 5.1.x",
					"id" : "obj-23",
					"fontname" : "Arial",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 6.0, 24.0, 338.0, 20.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "I suggest doing this, so if the server closes the socket (ie because of inactivity), the socket is automatically re-opened when you send another message.",
					"linecount" : 6,
					"id" : "obj-14",
					"fontname" : "Arial",
					"frgb" : [ 0.87451, 0.25098, 0.717647, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 536.0, 443.0, 164.0, 89.0 ],
					"textcolor" : [ 0.87451, 0.25098, 0.717647, 1.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "onebang",
					"id" : "obj-9",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 470.0, 449.0, 57.0, 20.0 ],
					"outlettype" : [ "bang", "bang" ],
					"fontsize" : 12.0,
					"color" : [ 0.87451, 0.25098, 0.717647, 1.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t l b",
					"id" : "obj-49",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 456.0, 423.0, 32.5, 20.0 ],
					"outlettype" : [ "", "bang" ],
					"fontsize" : 12.0,
					"color" : [ 0.87451, 0.25098, 0.717647, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel \"server disconnected\"",
					"id" : "obj-10",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 338.0, 567.0, 145.0, 20.0 ],
					"outlettype" : [ "bang", "" ],
					"fontsize" : 12.0,
					"color" : [ 0.87451, 0.25098, 0.717647, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"id" : "obj-42",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 470.0, 475.0, 37.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"bgcolor" : [ 0.87451, 0.25098, 0.717647, 1.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "what's new:\nNagle's Algorithm option, line ending option",
					"linecount" : 2,
					"id" : "obj-7",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 360.0, 53.0, 240.0, 34.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print connection",
					"id" : "obj-5",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 319.0, 523.0, 95.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The way I am reading lines back is might be inefficient and/or stupid - but it seems to work. I'd love some suggestions if it can be made better.",
					"linecount" : 3,
					"id" : "obj-98",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 453.0, 644.0, 355.0, 48.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "To read lines back, poll it with bangs",
					"id" : "obj-95",
					"fontname" : "Arial Bold",
					"numoutlets" : 0,
					"patching_rect" : [ 66.0, 76.0, 219.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-94",
					"numoutlets" : 1,
					"patching_rect" : [ 42.0, 127.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ],
					"bgcolor" : [ 0.0, 0.768627, 0.007843, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"id" : "obj-92",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 427.0, 387.0, 34.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"color" : [ 0.0, 0.768627, 0.007843, 1.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print responseLine",
					"id" : "obj-89",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 204.0, 511.0, 109.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "lines read back will show up here",
					"id" : "obj-88",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 64.0, 537.0, 241.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b l",
					"id" : "obj-86",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 442.0, 335.0, 32.5, 20.0 ],
					"outlettype" : [ "bang", "" ],
					"fontsize" : 12.0,
					"color" : [ 0.0, 1.0, 0.011765, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-85",
					"numoutlets" : 1,
					"patching_rect" : [ 43.0, 76.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qmetro 30",
					"id" : "obj-83",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 43.0, 99.0, 66.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Persistent Socket TCP Client mxj class - version 0.5",
					"id" : "obj-66",
					"fontname" : "Arial Bold",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 6.0, 4.0, 397.0, 23.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 14.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "or optionally send a bang after each message you send to read one line back if you know that is the only time you will get data back (and that it will be only one line). But this is not recommended",
					"linecount" : 3,
					"id" : "obj-62",
					"fontname" : "Arial",
					"frgb" : [ 0.0, 0.768627, 0.007843, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 63.0, 127.0, 492.0, 48.0 ],
					"textcolor" : [ 0.0, 0.768627, 0.007843, 1.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "I should probably make another inlet and figure out how to make it accept anything for sending instead…",
					"linecount" : 4,
					"id" : "obj-58",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 530.0, 270.0, 171.0, 62.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "double click to see my messy and probably bass-ackwards source code (I have no experience whatsoever with java)",
					"linecount" : 2,
					"id" : "obj-56",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 453.0, 607.0, 338.0, 34.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Also send this after an address or port change to re-establish the connection to the new destination (ie if there is a socket operating, the open message closes it before opening the new one)",
					"linecount" : 9,
					"id" : "obj-54",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 293.0, 244.0, 142.0, 131.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "get information",
					"id" : "obj-52",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 504.0, 355.0, 90.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "5 Close when you are done",
					"linecount" : 2,
					"id" : "obj-50",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 629.0, 185.0, 120.0, 34.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "4 send stuff (for now must be a symbol preceded by send)",
					"linecount" : 2,
					"id" : "obj-45",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 447.0, 185.0, 172.0, 34.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "3 open the socket",
					"id" : "obj-43",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 318.0, 185.0, 105.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2 set the port",
					"id" : "obj-41",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 226.0, 185.0, 81.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "SPUMONI",
					"id" : "obj-39",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 555.0, 222.0, 97.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1 set the address",
					"id" : "obj-38",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 76.0, 185.0, 103.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-36",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 495.0, 222.0, 52.0, 20.0 ],
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\"the gastropod's pajamas\"",
					"id" : "obj-34",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 545.0, 247.0, 150.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"id" : "obj-32",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 442.0, 222.0, 50.0, 20.0 ],
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend send",
					"id" : "obj-30",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 442.0, 308.0, 84.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tosymbol",
					"id" : "obj-29",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 442.0, 282.0, 59.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "close",
					"id" : "obj-26",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 699.0, 223.0, 39.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"id" : "obj-24",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 318.0, 222.0, 37.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "port 7126",
					"id" : "obj-22",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 223.0, 244.0, 61.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "port 7125",
					"id" : "obj-21",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 223.0, 222.0, 61.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print Five",
					"id" : "obj-19",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 75.0, 680.0, 60.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj net.tcp.recv @port 7125",
					"id" : "obj-20",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 75.0, 646.0, 165.0, 20.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "get port",
					"id" : "obj-17",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 563.0, 375.0, 51.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "address 192.168.1.7",
					"id" : "obj-16",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 72.0, 244.0, 120.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "get address",
					"id" : "obj-15",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 486.0, 375.0, 73.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "address localhost",
					"id" : "obj-12",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 73.0, 222.0, 102.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print tcpClient_info",
					"id" : "obj-11",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 351.0, 499.0, 110.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print Six",
					"id" : "obj-4",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 254.0, 680.0, 55.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj net.tcp.recv @port 7126",
					"id" : "obj-3",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 254.0, 646.0, 161.0, 20.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj tcpClient",
					"id" : "obj-2",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"patching_rect" : [ 286.0, 471.0, 84.0, 20.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj quickie tcpClient",
					"id" : "obj-1",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 536.0, 696.0, 120.0, 20.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_top_panel",
					"id" : "obj-25",
					"numoutlets" : 0,
					"mode" : 1,
					"patching_rect" : [ 3.0, 1.0, 597.0, 46.0 ],
					"grad1" : [ 0.27, 0.35, 0.47, 1.0 ],
					"background" : 1,
					"grad2" : [ 0.85, 0.85, 0.85, 1.0 ],
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 783.5, 498.0, 783.5, 498.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 783.5, 222.0, 759.0, 222.0, 759.0, 510.0, 783.5, 510.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 783.5, 276.0, 759.0, 276.0, 759.0, 510.0, 783.5, 510.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 783.5, 342.0, 759.0, 342.0, 759.0, 510.0, 783.5, 510.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 783.5, 399.0, 759.0, 399.0, 759.0, 510.0, 783.5, 510.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 783.5, 366.0, 759.0, 366.0, 759.0, 510.0, 783.5, 510.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 783.5, 198.0, 759.0, 198.0, 759.0, 510.0, 783.5, 510.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 0 ],
					"destination" : [ "obj-92", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.768627, 0.007843, 1.0 ],
					"midpoints" : [ 51.5, 387.0, 423.0, 387.0, 423.0, 384.0, 436.5, 384.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-92", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.768627, 0.007843, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.768627, 0.007843, 1.0 ],
					"midpoints" : [ 436.5, 456.0, 295.5, 456.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 327.5, 240.0, 288.0, 240.0, 288.0, 405.0, 273.0, 405.0, 273.0, 456.0, 295.5, 456.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 232.5, 456.0, 295.5, 456.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 232.5, 240.0, 210.0, 240.0, 210.0, 456.0, 295.5, 456.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 572.5, 408.0, 441.0, 408.0, 441.0, 456.0, 295.5, 456.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 82.5, 240.0, 69.0, 240.0, 69.0, 456.0, 295.5, 456.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 495.5, 408.0, 441.0, 408.0, 441.0, 456.0, 295.5, 456.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 81.5, 456.0, 295.5, 456.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 708.5, 408.0, 441.0, 408.0, 441.0, 456.0, 295.5, 456.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-88", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 2 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-9", 1 ],
					"hidden" : 0,
					"color" : [ 0.87451, 0.25098, 0.717647, 1.0 ],
					"midpoints" : [ 347.5, 594.0, 537.0, 594.0, 537.0, 444.0, 517.5, 444.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"color" : [ 0.87451, 0.25098, 0.717647, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"color" : [ 0.87451, 0.25098, 0.717647, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"color" : [ 0.87451, 0.25098, 0.717647, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 465.5, 444.0, 295.5, 444.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 1 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"color" : [ 0.87451, 0.25098, 0.717647, 1.0 ],
					"midpoints" : [ 479.5, 495.0, 456.0, 495.0, 456.0, 456.0, 295.5, 456.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 52.5, 120.0, 27.0, 120.0, 27.0, 456.0, 295.5, 456.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
