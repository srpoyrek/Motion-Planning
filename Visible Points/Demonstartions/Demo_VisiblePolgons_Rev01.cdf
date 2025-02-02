(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.3' *)

(***************************************************************************)
(*                                                                         *)
(*                                                                         *)
(*  Under the Wolfram FreeCDF terms of use, this file and its content are  *)
(*  bound by the Creative Commons BY-SA Attribution-ShareAlike license.    *)
(*                                                                         *)
(*        For additional information concerning CDF licensing, see:        *)
(*                                                                         *)
(*         www.wolfram.com/cdf/adopting-cdf/licensing-options.html         *)
(*                                                                         *)
(*                                                                         *)
(***************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1088,         20]
NotebookDataLength[    230648,       4330]
NotebookOptionsPosition[    226273,       4240]
NotebookOutlinePosition[    228327,       4290]
CellTagsIndexPosition[    227991,       4278]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Your Title Here", "DemoTitle",ExpressionUUID->"62fa5e5c-8f1b-42e7-a012-01b3303a92ab"],

Cell[CellGroupData[{

Cell["", "InitializationSection",ExpressionUUID->"a4e720a4-3f00-48f1-b8e4-36fd19a7fafa"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Returns", " ", "a", " ", "Nested", " ", "list", " ", "of", " ", "pair", 
    " ", "of", " ", "points", " ", "representing", " ", "each", " ", "line", 
    " ", "in", " ", "polygon"}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"lineList", "[", "list_", "]"}], ":=", 
     RowBox[{"Partition", "[", 
      RowBox[{
       RowBox[{"Append", "[", 
        RowBox[{"list", ",", 
         RowBox[{"First", "[", "list", "]"}]}], "]"}], ",", "2", ",", "1"}], 
      "]"}]}], ";"}], " ", "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
    "Returns", " ", "a", " ", "Vector", " ", "for", " ", "a", " ", "line", 
     " ", "between", " ", "two", " ", "points"}], "*)"}], "\n", 
   RowBox[{
    RowBox[{"vector", "[", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"x1_", ",", "y1_"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"x2_", ",", "y2_"}], "}"}]}], "}"}], "]"}], ":=", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"x2", "-", "x1"}], ",", 
      RowBox[{"y2", "-", "y1"}]}], "}"}]}], "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
    "Returns", " ", "a", " ", "Normal", " ", "Vector", " ", "for", " ", "a", 
     " ", "line", " ", "between", " ", "two", " ", "points"}], "*)"}], "\n", 
   RowBox[{
    RowBox[{"normalVector", "[", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"x2_", ",", "y2_"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"x1_", ",", "y1_"}], "}"}]}], "}"}], "]"}], ":=", 
    RowBox[{"Normalize", "[", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "y2"}], "+", "y1"}], ")"}], ",", 
       RowBox[{"x2", "-", "x1"}]}], "}"}], " ", "]"}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
    "form", " ", "a", " ", "list", " ", "having", " ", "a", " ", "set", " ", 
     "of", " ", "3", " ", "points", " ", "as", " ", "the", " ", "elements"}], 
    "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"vertexList", "[", "list_", "]"}], ":=", 
    RowBox[{"Partition", "[", 
     RowBox[{
      RowBox[{"Join", "[", 
       RowBox[{"list", ",", 
        RowBox[{"list", "\[LeftDoubleBracket]", 
         RowBox[{"1", ";;", "2"}], "\[RightDoubleBracket]"}]}], "]"}], ",", 
      "3", ",", "1"}], "]"}]}], "\n", 
   RowBox[{"(*", 
    RowBox[{
     RowBox[{"Reference", ":", "https", ":"}], " ", "//", 
     RowBox[{
      RowBox[{"demonstrations", ".", "wolfram", ".", "com"}], "/", 
      "SegmentIntersection"}]}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
     RowBox[{
     "The", " ", "parametric", " ", "equation", " ", "of", " ", "the", " ", 
      "line", " ", "containing", " ", "the", " ", "points", " ", 
      FormBox["a",
       TraditionalForm], " ", "and", " ", 
      FormBox["b",
       TraditionalForm], " ", "is", " ", 
      FormBox[
       RowBox[{"a", "+", 
        RowBox[{"\[Lambda]", " ", 
         RowBox[{"(", 
          RowBox[{"b", "-", "a"}], ")"}]}]}],
       TraditionalForm]}], ",", " ", 
     RowBox[{"where", " ", 
      FormBox[
       RowBox[{"0", "\[LessEqual]", "\[Lambda]", "\[LessEqual]", "1"}],
       TraditionalForm], " ", "for", " ", "points", " ", "between", " ", 
      FormBox["a",
       TraditionalForm], " ", "and", " ", 
      RowBox[{
       FormBox["b",
        TraditionalForm], ".", " ", "The"}], " ", "value", " ", "of", " ", 
      FormBox["\[Lambda]",
       TraditionalForm], " ", "is", " ", "given", " ", "by"}]}], "*)"}], 
   RowBox[{
    RowBox[{
     RowBox[{"\[Lambda]", "[", 
      RowBox[{"{", 
       RowBox[{"a_", ",", "b_"}], "}"}], "]"}], "[", "p_", "]"}], ":=", 
    FractionBox[
     RowBox[{
      RowBox[{"(", 
       RowBox[{"a", "-", "p"}], ")"}], ".", 
      RowBox[{"(", 
       RowBox[{"a", "-", "b"}], ")"}]}], 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"a", "-", "b"}], ")"}], ".", 
      RowBox[{"(", 
       RowBox[{"a", "-", "b"}], ")"}]}]]}], "\n", 
   RowBox[{"(*", 
    RowBox[{
     RowBox[{"for", " ", 
      FormBox["p",
       TraditionalForm], " ", "on", " ", "the", " ", 
      RowBox[{"line", ".", " ", "For"}], " ", 
      FormBox["p",
       TraditionalForm], " ", "not", " ", "on", " ", "the", " ", "line"}], 
     ",", " ", 
     RowBox[{
      FormBox["\[Lambda]",
       TraditionalForm], " ", "gives", " ", "the", " ", "closest", " ", 
      "point", " ", "on", " ", "the", " ", 
      RowBox[{"line", "."}]}]}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
     RowBox[{"Two", " ", "lines"}], ",", " ", 
     RowBox[{
      SubscriptBox["L", 
       RowBox[{"1", " "}]], "containing", " ", "the", " ", "points", " ", "a",
       " ", "and", " ", "b", " ", "with", " ", "line", " ", 
      FormBox[
       SubscriptBox["L", "2"],
       TraditionalForm], " ", "containing", " ", "the", " ", "points", " ", 
      FormBox["c",
       TraditionalForm], " ", "and", " ", 
      FormBox["d",
       TraditionalForm]}], ",", " ", 
     RowBox[{"intersect", " ", "at", " ", "a", " ", 
      RowBox[{
       RowBox[{"point", " ", "\[DoubleLongLeftRightArrow]", " ", 
        FormBox[
         RowBox[{
          FormBox[
           TagBox[
            RowBox[{"\[LeftBracketingBar]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"a", "-", "b"}], ",", 
               RowBox[{"c", "-", "d"}]}], "}"}], "\[RightBracketingBar]"}],
            {Det}],
           TraditionalForm], "\[NotEqual]", "0"}],
         TraditionalForm]}], ".", "  ", "Compute"}], " ", "the", " ", 
      "intersection", " ", 
      RowBox[{"point", ":"}]}]}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"LineIntersectionPoint", "[", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"a_", ",", "b_"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"c_", ",", "d_"}], "}"}]}], "}"}], "]"}], ":=", 
    FractionBox[
     RowBox[{
      RowBox[{
       RowBox[{"Det", "[", 
        RowBox[{"{", 
         RowBox[{"a", ",", "b"}], "}"}], "]"}], " ", 
       RowBox[{"(", 
        RowBox[{"c", "-", "d"}], ")"}]}], "-", 
      RowBox[{
       RowBox[{"Det", "[", 
        RowBox[{"{", 
         RowBox[{"c", ",", "d"}], "}"}], "]"}], " ", 
       RowBox[{"(", 
        RowBox[{"a", "-", "b"}], ")"}]}]}], 
     RowBox[{"Det", "[", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"a", "-", "b"}], ",", 
        RowBox[{"c", "-", "d"}]}], "}"}], "]"}]]}], "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"Use", " ", 
     FormBox[
      RowBox[{
       FormBox[
        TagBox[
         RowBox[{"\[LeftBracketingBar]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"a", "-", "b"}], ",", 
            RowBox[{"c", "-", "d"}]}], "}"}], "\[RightBracketingBar]"}],
         {Det}],
        TraditionalForm], "\[NotEqual]", "0"}],
      TraditionalForm], " ", "along", " ", "with", " ", "the", " ", 
     "condition", " ", 
     FormBox[
      RowBox[{"0", "\[LessEqual]", "\[Lambda]", "\[LessEqual]", "1"}],
      TraditionalForm], " ", "to", " ", "determine", " ", "whether", " ", 
     "two", " ", "segments", " ", 
     RowBox[{"intersect", ":"}]}], "*)"}], "\n", 
   RowBox[{
    RowBox[{"SegmentIntersectionQ", "[", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"p1", ":", 
        RowBox[{"{", 
         RowBox[{"a_", ",", "b_"}], "}"}]}], ",", 
       RowBox[{"p2", ":", 
        RowBox[{"{", 
         RowBox[{"c_", ",", "d_"}], "}"}]}]}], "}"}], 
     RowBox[{"(*", 
      RowBox[{",", "endpoints_"}], "*)"}], "]"}], ":=", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"roundoff", "=", "0.0000001"}], "}"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"Chop", "@", 
          RowBox[{"Det", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"a", "-", "b"}], ",", 
             RowBox[{"c", "-", "d"}]}], "}"}], "]"}]}], "\[Equal]", "0"}], 
        ",", "False", ",", "\[IndentingNewLine]", 
        RowBox[{"Module", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"p", "=", 
            RowBox[{"Round", "[", 
             RowBox[{
              RowBox[{"LineIntersectionPoint", "[", 
               RowBox[{"{", 
                RowBox[{"p1", ",", "p2"}], "}"}], "]"}], ",", "roundoff"}], 
             "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"0", "<", 
              RowBox[{
               RowBox[{"\[Lambda]", "[", "p1", "]"}], "[", "p", "]"}], "<", 
              "1"}], ")"}], " ", "&&", 
            RowBox[{"(", 
             RowBox[{"0", "<", 
              RowBox[{
               RowBox[{"\[Lambda]", "[", "p2", "]"}], "[", "p", "]"}], "<", 
              "1"}], ")"}], "&&", " ", 
            RowBox[{"Not", "@", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"p", "\[Equal]", " ", 
                RowBox[{"Round", "[", 
                 RowBox[{"a", ",", "roundoff"}], "]"}]}], "||", "  ", 
               RowBox[{"p", "\[Equal]", " ", 
                RowBox[{"Round", "[", 
                 RowBox[{"b", " ", ",", "roundoff"}], "]"}]}], "||", "  ", 
               RowBox[{"p", "\[Equal]", " ", 
                RowBox[{"Round", "[", 
                 RowBox[{"c", ",", "roundoff"}], "]"}]}], "||", "  ", 
               RowBox[{"p", "\[Equal]", 
                RowBox[{"Round", "[", 
                 RowBox[{"d", ",", "roundoff"}], "]"}]}]}], ")"}]}]}], 
           ")"}]}], " ", "]"}]}], "]"}]}], "]"}]}], "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
     RowBox[{
     "made", " ", "a", "  ", "change", " ", "in", " ", "the", " ", 
      "condition", " ", "to", " ", "ignore", " ", "the", " ", "end", " ", 
      "points", " ", 
      RowBox[{"i", ".", "e"}], " ", "return", " ", "false", " ", "if", " ", 
      "p"}], " ", "\[Equal]", " ", 
     RowBox[{"end", " ", "points", " ", "and", " ", 
      RowBox[{"chop", "@", "p"}]}]}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
     RowBox[{" ", 
      RowBox[{"Returns", " ", "the", " ", "angle", " ", "made", " ", 
       RowBox[{"in", " ", "[", 
        RowBox[{"o", ",", 
         RowBox[{"2", "Pi"}]}]}]}], ")"}], " ", "Range"}], "*)"}], "\n", 
   RowBox[{"(*", 
    RowBox[{
     RowBox[{"Reference", ":", " ", "https", ":"}], "//", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"mathematica", ".", "stackexchange", ".", "com"}], "/", 
         "questions"}], "/", "111629"}], "/", "calculating"}], "-", "the", 
      "-", "angle", "-", "between", "-", "the", "-", "line", "-", "joining", 
      "-", "two", "-", "points", "-", "and", "-", "the", "-", "x", "-", 
      "axis"}]}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"getAngle", "[", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"x1_", ",", "y1_"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"x2_", ",", "y2_"}], "}"}]}], "}"}], "]"}], ":=", 
    RowBox[{"Mod", "[", 
     RowBox[{
      RowBox[{"ArcTan", "[", 
       RowBox[{
        RowBox[{"x2", "-", "x1"}], ",", 
        RowBox[{"y2", "-", "y1"}]}], "]"}], ",", 
      RowBox[{"2", " ", "\[Pi]"}]}], "]"}]}], "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
    "True", " ", "if", " ", "w2", " ", "is", " ", "Interior", " ", "vertex", 
     " ", "from", " ", "p"}], " ", "*)"}], "\n", 
   RowBox[{
    RowBox[{"intersectInteriorQRev2", "[", 
     RowBox[{"p_", ",", 
      RowBox[{"{", 
       RowBox[{"w1_", ",", "w2_", ",", "w3_"}], "}"}]}], "]"}], ":=", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"a", "=", 
         RowBox[{"getClockwiseAngle", "[", 
          RowBox[{"w1", ",", "w2", ",", "w3"}], "]"}]}], ",", 
        RowBox[{"b", "=", " ", 
         RowBox[{"getClockwiseAngle", "[", 
          RowBox[{"p", ",", "w2", ",", "w3"}], "]"}]}]}], "}"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"b", "\[Equal]", "0"}], ",", 
         RowBox[{"b", "=", "6.28319"}]}], "]"}], ";", "\[IndentingNewLine]", 
       RowBox[{"a", ">", "b"}]}]}], "]"}]}], "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
    "Clockwise", " ", "angle", " ", "bwtween", " ", "tw", " ", "o", " ", 
     "vectors"}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
     RowBox[{"https", ":"}], "//", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"adndevblog", ".", "typepad", ".", "com"}], "/", 
          "manufacturing"}], "/", "2012"}], "/", "07"}], "/", "finding"}], 
      "-", "the", "-", "angle", "-", "between", "-", "two", "-", "vectors", 
      "-", "along", "-", "a", "-", "given", "-", "direction", "-", "anti", 
      "-", "clockwise", "-", "or", "-", 
      RowBox[{"clockwise", ".", "html"}]}]}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"getClockwiseAngle", "[", 
     RowBox[{"p1_", ",", "p2_", ",", "p3_"}], "]"}], ":=", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"a", "=", 
         RowBox[{"(", 
          RowBox[{"p3", "-", "p2"}], ")"}]}], ",", 
        RowBox[{"b", "=", 
         RowBox[{"(", 
          RowBox[{"p1", "-", "p2"}], ")"}]}]}], "}"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"AppendTo", "[", 
        RowBox[{"a", ",", "0"}], "]"}], ";", 
       RowBox[{"AppendTo", "[", 
        RowBox[{"b", ",", "0"}], "]"}], ";", "\[IndentingNewLine]", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"Cross", "[", 
             RowBox[{"a", ",", "b"}], "]"}], "\[LeftDoubleBracket]", "3", 
            "\[RightDoubleBracket]"}], ")"}], "<", " ", "0"}], ",", 
         RowBox[{"Chop", "@", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"2", "Pi"}], " ", "-", 
            RowBox[{"VectorAngle", "[", 
             RowBox[{"a", ",", "b"}], "]"}]}], ")"}]}], ",", 
         RowBox[{"Chop", "@", 
          RowBox[{"VectorAngle", "[", 
           RowBox[{"a", ",", "b"}], "]"}]}]}], "]"}]}]}], "]"}]}], "\n", 
   RowBox[{"(*", 
    RowBox[{
    "true", " ", "if", " ", "pt", "  ", "is", " ", "inside", " ", "polygon"}],
     "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"testpoint", "[", 
     RowBox[{"poly_", ",", "pt_"}], "]"}], ":=", 
    RowBox[{
     RowBox[{"Round", "[", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"Total", "@", 
          RowBox[{"Mod", "[", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{"#", "-", 
                RowBox[{"RotateRight", "[", "#", "]"}]}], ")"}], "&"}], "@", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{
                RowBox[{"ArcTan", "@@", 
                 RowBox[{"(", 
                  RowBox[{"pt", "-", "#"}], ")"}]}], "&"}], "/@", "poly"}], 
              ")"}]}], ",", 
            RowBox[{"2", " ", "Pi"}], ",", 
            RowBox[{"-", "Pi"}]}], "]"}]}], "/", "2"}], "/", "Pi"}], ")"}], 
      "]"}], "\[NotEqual]", "0"}]}], "\n", 
   RowBox[{"(*", 
    RowBox[{
    "Find", " ", "if", " ", "a", " ", "vertex", " ", "is", " ", "a", " ", 
     "glancing", " ", "blow"}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"glancingBlow", "[", 
     RowBox[{"a_", ",", 
      RowBox[{"{", 
       RowBox[{"p1_", ",", "p2_", ",", "p3_"}], "}"}]}], "]"}], ":=", 
    "\[IndentingNewLine]", 
    RowBox[{"Xor", "[", 
     RowBox[{
      RowBox[{"reflex", "[", 
       RowBox[{"p1", ",", "p2", ",", "a"}], "]"}], ",", " ", 
      RowBox[{"reflex", "[", 
       RowBox[{"p3", ",", "p2", ",", "a"}], "]"}]}], "]"}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
     RowBox[{
     "Function", " ", "Gives", " ", "whether", " ", "a", " ", "point", " ", 
      "is", " ", "reflex", " ", "or", " ", "not"}], ",", " ", 
     RowBox[{
     "Chop", " ", "is", " ", "used", " ", "to", " ", "round", " ", "of", " ", 
      "to", " ", "the", " ", "nearest", " ", 
      RowBox[{"integer", ".", " ", "From"}], " ", "Motion", " ", "Plannning", 
      " ", "Book", " ", "by", " ", "Steven", " ", 
      RowBox[{"M", ".", "LaValle"}]}]}], "*)"}], "\n", 
   RowBox[{
    RowBox[{"reflex", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"x1_", ",", "y1_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x2_", ",", "y2_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x3_", ",", "y3_"}], "}"}]}], "]"}], ":=", 
    RowBox[{
     RowBox[{"Chop", "[", 
      RowBox[{"Det", "[", 
       RowBox[{"(", "\[NoBreak]", GridBox[{
          {"1", "x1", "y1"},
          {"1", "x2", "y2"},
          {"1", "x3", "y3"}
         }], "\[NoBreak]", ")"}], "]"}], "]"}], ">", "  ", "0"}]}], "  ", 
   "\n", 
   RowBox[{"(*", 
    RowBox[{
    "Returns", " ", "a", " ", "extended", " ", "line", " ", "of", " ", "the", 
     " ", "original", " ", "line"}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"extendedLine", "[", 
     RowBox[{"p1_", ",", "p2_"}], "]"}], ":=", 
    RowBox[{"{", 
     RowBox[{"p1", ",", 
      RowBox[{"(", 
       RowBox[{"p1", "+", 
        RowBox[{"40", 
         RowBox[{"(", 
          RowBox[{"Normalize", "@", 
           RowBox[{"(", 
            RowBox[{"(", 
             RowBox[{"p2", "-", "p1"}], ")"}], ")"}]}], ")"}]}]}], ")"}]}], 
     "}"}]}], "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
    "Retruns", " ", "True", " ", "if", " ", "collinear", " ", "else", " ", 
     "false"}], "*)"}], "\n", 
   RowBox[{"(*", 
    RowBox[{
     RowBox[{"https", ":"}], "//", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"mathematica", ".", "stackexchange", ".", "com"}], "/", 
         "questions"}], "/", "120773"}], "/", "remove"}], "-", "inner", "-", 
      "points", "-", "from", "-", "collinear", "-", 
      RowBox[{"list", "/", "120777"}]}]}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"collinearQ", "[", 
     RowBox[{"pts_", "?", "MatrixQ"}], "]"}], ":=", 
    RowBox[{
     RowBox[{"MatrixRank", "[", 
      RowBox[{"Standardize", "[", 
       RowBox[{"pts", ",", "Mean", ",", 
        RowBox[{"1", "&"}]}], "]"}], "]"}], "==", " ", 
     RowBox[{"Last", "[", 
      RowBox[{"Dimensions", "[", "pts", "]"}], "]"}]}]}], "\n", 
   RowBox[{"(*", 
    RowBox[{
    "returns", " ", "ture", " ", "if", " ", "p3", " ", "lies", " ", "on", " ",
      "the", " ", "line", " ", "formed", " ", "by", " ", "p1", " ", "and", 
     " ", "p2"}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"pointOnSegmentQ", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"x1_", ",", "y1_"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"x2_", ",", "y2_"}], "}"}]}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x3_", ",", "y3_"}], "}"}]}], "]"}], ":=", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"ABv", " ", "=", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"x2", "-", "x1"}], ",", 
           RowBox[{"y2", "-", "y1"}], ",", "0"}], "}"}]}], ",", 
        RowBox[{"ACv", "=", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"x3", "-", "x1"}], ",", 
           RowBox[{"y3", "-", "y1"}], ",", "0"}], "}"}]}], ",", "Kac", ",", 
        "Kab"}], "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"And", "@@", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"Chop", "@", "#"}], "\[Equal]", "0"}], ")"}], "&"}], "/@", 
           RowBox[{"Cross", "[", 
            RowBox[{"ABv", ",", "ACv"}], "]"}]}], ")"}]}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"Kac", "=", 
          RowBox[{"(", 
           RowBox[{"ABv", ".", "ACv"}], ")"}]}], ";", "\[IndentingNewLine]", 
         RowBox[{"Kab", "=", 
          RowBox[{"(", 
           RowBox[{"ABv", ".", "ABv"}], ")"}]}], ";", "\[IndentingNewLine]", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"Kac", "<", " ", "0"}], ",", "False", ",", 
           "\[IndentingNewLine]", 
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"Kac", ">", "Kab"}], ",", "False", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"0", "<", " ", "Kac", "<", "Kab"}], ",", "True", ",", 
               "False"}], "]"}]}], "\[IndentingNewLine]", "]"}]}], "]"}]}], 
        ",", "False"}], "]"}]}], "]"}]}], "\n", 
   RowBox[{"(*", 
    RowBox[{
    "returns", " ", "true", " ", "if", " ", "the", " ", "point", " ", "p", 
     " ", "lies", " ", "on", " ", "the", " ", "right", " ", "side", " ", 
     "else", " ", "falses"}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"leftOrRight", "[", 
     RowBox[{
      RowBox[{"a", ":", 
       RowBox[{"{", 
        RowBox[{"x1_", ",", "y1_"}], "}"}]}], ",", 
      RowBox[{"b", ":", 
       RowBox[{"{", 
        RowBox[{"x2_", ",", "y2_"}], "}"}]}], ",", 
      RowBox[{"p", ":", 
       RowBox[{"{", 
        RowBox[{"x_", ",", "y_"}], "}"}]}]}], "]"}], ":=", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{"x", "\[Minus]", "x1"}], ")"}], 
        RowBox[{"(", 
         RowBox[{"y2", "\[Minus]", "y1"}], ")"}]}], "\[Minus]", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"y", "\[Minus]", "y1"}], ")"}], 
        RowBox[{"(", 
         RowBox[{"x2", "\[Minus]", "x1"}], ")"}]}]}], ")"}], 
     "\[GreaterEqual]", "  ", "0"}]}], "\n", 
   RowBox[{"(*", 
    RowBox[{
    "Function", " ", "returns", " ", "False", " ", "if", " ", "the", " ", 
     "line", " ", "formed", " ", "by", " ", "points", " ", "p1", " ", "and", 
     " ", "p2", " ", "intersect", " ", "any", " ", "of", " ", "the", " ", 
     RowBox[{"line", "'"}], "s", "  ", "in", " ", "linelist", " ", "else", 
     " ", "returns", " ", "true"}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"noIntersection", "[", 
     RowBox[{"p1_", ",", "p2_", ",", "linelist_"}], "]"}], ":=", 
    "\[IndentingNewLine]", 
    RowBox[{"Nor", "@@", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"SegmentIntersectionQ", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"p1", ",", "p2"}], "}"}], ",", "#"}], "}"}], "]"}], "&"}],
        "/@", "linelist"}], ")"}]}]}], "\n", 
   RowBox[{"(*", 
    RowBox[{"angle", " ", "sorting", " ", "condition"}], "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"angleSortCond", "[", 
     RowBox[{"point_", ",", "l1_", ",", "l2_"}], "]"}], ":=", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"a", "=", 
         RowBox[{"getAngle", "[", 
          RowBox[{"{", 
           RowBox[{"point", ",", 
            RowBox[{
            "l1", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}], 
           "}"}], "]"}]}], ",", 
        RowBox[{"b", "=", 
         RowBox[{"getAngle", "[", 
          RowBox[{"{", 
           RowBox[{"point", ",", 
            RowBox[{
            "l2", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}], 
           "}"}], "]"}]}], ",", 
        RowBox[{"c", "=", 
         RowBox[{"Norm", "[", 
          RowBox[{"point", "-", 
           RowBox[{
           "l1", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}], 
          "]"}]}], ",", 
        RowBox[{"d", "=", 
         RowBox[{"Norm", "[", 
          RowBox[{"point", "-", 
           RowBox[{
           "l2", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}], 
          "]"}]}]}], "}"}], ",", 
      RowBox[{
       RowBox[{"a", "<", "b"}], "||", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"a", "\[Equal]", "b"}], " ", "&&", "  ", 
         RowBox[{"c", "<", "d"}]}], ")"}]}]}], "]"}]}], "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"distance", " ", "sorting", " ", "condition"}], "*)"}], "\n", 
   RowBox[{
    RowBox[{"distSortCond", "[", 
     RowBox[{"line_", ",", "l1_", ",", "l2_", ",", "point_"}], "]"}], ":=", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"a", "=", 
         RowBox[{"EuclideanDistance", "[", 
          RowBox[{
           RowBox[{"LineIntersectionPoint", "[", 
            RowBox[{"Chop", "@", 
             RowBox[{"{", 
              RowBox[{"line", ",", "l1"}], "}"}]}], "]"}], ",", "point"}], 
          "]"}]}], ",", 
        RowBox[{"b", "=", 
         RowBox[{"EuclideanDistance", "[", 
          RowBox[{
           RowBox[{"LineIntersectionPoint", "[", 
            RowBox[{"Chop", "@", 
             RowBox[{"{", 
              RowBox[{"line", ",", "l2"}], "}"}]}], "]"}], ",", "point"}], 
          "]"}]}]}], "}"}], ",", 
      RowBox[{"a", "<", "b"}]}], "]"}]}]}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.760802532026407*^9, 3.7608026249231467`*^9}, {
   3.760802678975656*^9, 3.760802687697389*^9}, {3.760803348506281*^9, 
   3.760803349726018*^9}, {3.774190612448588*^9, 3.774190658058441*^9}, {
   3.774190780605163*^9, 3.7741907812674904`*^9}, 3.7741921735451174`*^9},
 CellLabel->"In[1]:=",
 CellID->141966600,ExpressionUUID->"f20966f7-a813-491c-8d30-f8c35ca68dd6"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ManipulateSection",ExpressionUUID->"4815c593-ada9-4ffd-9118-673e464308a9"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"p", "=", 
        RowBox[{
        "pts", "\[LeftDoubleBracket]", "13", "\[RightDoubleBracket]"}]}], ",", 
       RowBox[{"o", "=", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{
          "pts", "\[LeftDoubleBracket]", "11", "\[RightDoubleBracket]"}], ",", 
          RowBox[{
          "pts", "\[LeftDoubleBracket]", "12", "\[RightDoubleBracket]"}]}], 
         "}"}]}], ",", 
       RowBox[{"workspace", "=", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"6", "*", 
           RowBox[{"(", 
            RowBox[{"2", "*", " ", "0.707107"}], ")"}]}], ")"}], "*", 
         RowBox[{"CirclePoints", "@", "4"}]}]}], ",", "listofAllLines", ",", 
       "sortedList", ",", "sortedText", ",", "infiniteLine", ",", "i", ",", 
       "gLine", ",", "lvLine", ",", "giList", ",", "giPoint", ",", "giLine", 
       ",", "a", ",", "b", ",", "c", ",", "bc", ",", "ba", ",", "pb", ",", 
       "abcList", ",", 
       RowBox[{"JlineList", "=", 
        RowBox[{"{", "}"}]}], ",", "pbaAngle", ",", "pbcAngle", ",", 
       "bcNotVisInt", ",", "abNotVisInt", ",", "abNotGlaInt", ",", 
       "bcVisiInt", ",", "startJlistInt", ",", "tb", ",", "prevB", ",", 
       "postC", ",", "postB", ",", "postA", ",", "prevC", ",", "prevA", ",", 
       "pPostAB", ",", "pPostBC", ",", "pbaColl", ",", "pbcColl", ",", 
       "pbAngle", ",", "fvPoint", ",", "pprevbAngle", ",", "index", ",", 
       RowBox[{"oldP", "=", 
        RowBox[{"{", "}"}]}], ",", 
       RowBox[{"jList", "=", 
        RowBox[{"{", "}"}]}], ",", 
       RowBox[{"visibleList", "=", 
        RowBox[{"{", "}"}]}], ",", 
       RowBox[{"lvLineList", "=", 
        RowBox[{"{", "}"}]}], ",", 
       RowBox[{"visibleSList", "=", 
        RowBox[{"{", "}"}]}], ",", 
       RowBox[{"wi", "=", "False"}], ",", 
       RowBox[{"wip", "=", "False"}], ",", 
       RowBox[{"gFlag", "=", "False"}], ",", 
       RowBox[{"complexPoly", "=", "\[IndentingNewLine]", 
        RowBox[{"1.5", 
         RowBox[{"Reverse", "@", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "2"}], ",", 
              RowBox[{"-", "3.5"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "2"}], ",", 
              RowBox[{"-", "2"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "3.5"}], ",", 
              RowBox[{"-", "2"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "3.5"}], ",", "0"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "1.5"}], ",", "0"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "1.5"}], ",", "0.5"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "3.5"}], ",", "0.5"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "3.5"}], ",", "3.5"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "1.5"}], ",", "3.5"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "1.5"}], ",", "2"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"0.5", ",", "2"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"0.5", ",", "2.5"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "1"}], ",", "2.5"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "1"}], ",", "3.5"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"3.5", ",", "3.5"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"3.5", ",", "2.5"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"1.5", ",", "2.5"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"1.5", ",", "2"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"3.5", ",", "2"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"3.5", ",", 
              RowBox[{"-", "0.5"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"1.5", ",", 
              RowBox[{"-", "0.5"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"1.5", ",", 
              RowBox[{"-", "1.5"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"2", ",", 
              RowBox[{"-", "1.5"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"2", ",", 
              RowBox[{"-", "1"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"3.5", ",", 
              RowBox[{"-", "1"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"3.5", ",", 
              RowBox[{"-", "3.5"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"2", ",", 
              RowBox[{"-", "3.5"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"2", ",", 
              RowBox[{"-", "3"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"1.5", ",", 
              RowBox[{"-", "3"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"1.5", ",", 
              RowBox[{"-", "3.5"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "0.5"}], ",", 
              RowBox[{"-", "3.5"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "0.5"}], ",", 
              RowBox[{"-", "1"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", 
              RowBox[{"-", "1"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", 
              RowBox[{"-", "0.5"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "1"}], ",", 
              RowBox[{"-", "0.5"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "1"}], ",", 
              RowBox[{"-", "3.5"}]}], "}"}]}], "}"}]}]}]}]}], 
      "\[IndentingNewLine]", "}"}], ",", "\[IndentingNewLine]", 
     "\[IndentingNewLine]", 
     RowBox[{"(*", 
      RowBox[{
      "Only", " ", "If", " ", "p", " ", "Locator", " ", "are", " ", 
       "changes"}], "*)"}], "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"oldP", "\[NotEqual]", " ", "p"}], ",", "\[IndentingNewLine]", 
        RowBox[{"(*", 
         RowBox[{"Ristrict", " ", "the", " ", "p", " ", "Locator"}], "*)"}], 
        "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{
              RowBox[{
               RowBox[{
               "p", "\[LeftDoubleBracket]", "j", "\[RightDoubleBracket]"}], 
               ">", "6"}], "||", 
              RowBox[{
               RowBox[{
               "p", "\[LeftDoubleBracket]", "j", "\[RightDoubleBracket]"}], 
               "<", 
               RowBox[{"-", "6"}]}]}], ",", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{
                RowBox[{
                "p", "\[LeftDoubleBracket]", "j", "\[RightDoubleBracket]"}], 
                ">", "6"}], ",", 
               RowBox[{
                RowBox[{
                "p", "\[LeftDoubleBracket]", "j", "\[RightDoubleBracket]"}], 
                "=", "6"}], ",", 
               RowBox[{
                RowBox[{
                "p", "\[LeftDoubleBracket]", "j", "\[RightDoubleBracket]"}], 
                "=", 
                RowBox[{"-", "6"}]}]}], "]"}]}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"j", ",", "1", ",", "2", ",", "1"}], "}"}]}], "]"}], ";", 
         "\[IndentingNewLine]", "\[IndentingNewLine]", 
         RowBox[{"(*", 
          RowBox[{
          "Find", " ", "if", " ", "the", " ", "Point", " ", "p", " ", 
           "overlaps", " ", "any", " ", "of", " ", "the", " ", "vertices", 
           " ", "of", " ", "the", " ", "polyogon", " ", "or", " ", "lies", 
           " ", "on", " ", "any", " ", "line", " ", "segment", " ", "and", 
           " ", "if", " ", "so", " ", "then", " ", "shift", " ", "the", " ", 
           "point", " ", "p", " ", "by", " ", "some", " ", 
           RowBox[{"offset", "!"}]}], "*)"}], "\[IndentingNewLine]", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"Or", "@@", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"index", "=", 
                  RowBox[{"Flatten", "@", 
                   RowBox[{"Position", "[", 
                    RowBox[{"complexPoly", ",", "#"}], "]"}]}]}], ";", 
                 RowBox[{"p", "\[Equal]", " ", "#"}]}], ")"}], "&"}], "/@", 
              RowBox[{"(", "complexPoly", ")"}]}], ")"}]}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"p", "=", 
            RowBox[{"p", "-", 
             RowBox[{"0.00001", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"2", "*", 
                 RowBox[{
                 "complexPoly", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 RowBox[{"RotateLeft", "[", 
                  RowBox[{"complexPoly", ",", 
                   RowBox[{"index", "-", "2"}]}], "]"}], 
                 "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], "-", 
                RowBox[{
                 RowBox[{"RotateLeft", "[", 
                  RowBox[{"complexPoly", ",", "index"}], "]"}], 
                 "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}], 
               ")"}]}]}]}]}], "]"}], ";", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"pointOnSegmentQ", "[", 
              RowBox[{"#", ",", "p"}], "]"}], ",", 
             RowBox[{"p", "=", 
              RowBox[{"p", "-", 
               RowBox[{"0.00001", 
                RowBox[{"normalVector", "[", "#", "]"}]}]}]}]}], "]"}], "&"}],
           "/@", 
          RowBox[{"(", 
           RowBox[{"lineList", "@", "complexPoly"}], ")"}]}], ";", 
         "\[IndentingNewLine]", "\[IndentingNewLine]", 
         RowBox[{"(*", 
          RowBox[{
          "Reverse", " ", "the", " ", "order", " ", "of", " ", "the", " ", 
           "list", " ", "representing", " ", "a", " ", "polygon", " ", "if", 
           " ", "point", " ", "p", " ", "is", " ", "inside", " ", "the", " ", 
           "polygon"}], "*)"}], "\[IndentingNewLine]", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"testpoint", "[", 
            RowBox[{"complexPoly", ",", "p"}], "]"}], ",", 
           RowBox[{"complexPoly", "=", 
            RowBox[{"Reverse", "@", "complexPoly"}]}]}], "]"}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"testpoint", "[", 
            RowBox[{"workspace", ",", "p"}], "]"}], ",", 
           RowBox[{"workspace", "=", 
            RowBox[{"Reverse", "@", "workspace"}]}]}], "]"}], ";", 
         "\[IndentingNewLine]", "\[IndentingNewLine]", 
         RowBox[{"(*", " ", 
          RowBox[{
          "make", " ", "a", " ", "List", " ", "of", " ", "all", " ", 
           "Lines"}], "*)"}], "\[IndentingNewLine]", 
         RowBox[{"listofAllLines", "=", 
          RowBox[{"Join", "[", 
           RowBox[{
            RowBox[{"lineList", "@", "workspace"}], ",", 
            RowBox[{"lineList", "@", "complexPoly"}]}], "]"}]}], ";", 
         "\[IndentingNewLine]", "\[IndentingNewLine]", 
         RowBox[{"(*", 
          RowBox[{
          "get", " ", "a", " ", "Line", " ", "Parallel", " ", "to", " ", "X", 
           " ", "axis"}], "*)"}], "\[IndentingNewLine]", 
         RowBox[{"infiniteLine", "=", 
          RowBox[{"{", 
           RowBox[{"p", ",", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"0.1", ",", "0"}], "}"}], "+", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"Max", "@", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{
                   RowBox[{
                   "#", "\[LeftDoubleBracket]", "1", 
                    "\[RightDoubleBracket]"}], "&"}], "/@", 
                  RowBox[{"(", 
                   RowBox[{"Join", "[", 
                    RowBox[{"workspace", ",", "complexPoly"}], "]"}], ")"}]}],
                  ")"}]}], ",", 
               RowBox[{
               "p", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}], 
              "}"}]}]}], "}"}]}], ";", "\[IndentingNewLine]", 
         "\[IndentingNewLine]", 
         RowBox[{"(*", 
          RowBox[{
          "Sort", " ", "the", " ", "lines", " ", "based", " ", "on", " ", 
           "the", " ", "angle", " ", 
           RowBox[{"w", ".", "r", ".", "t"}], " ", "to", " ", "point", " ", 
           "p"}], "*)"}], "\[IndentingNewLine]", 
         RowBox[{"sortedList", "=", 
          RowBox[{"Sort", "[", 
           RowBox[{
            RowBox[{"Join", "[", 
             RowBox[{
              RowBox[{"vertexList", "@", 
               RowBox[{"(", "workspace", ")"}]}], ",", 
              RowBox[{"vertexList", "@", 
               RowBox[{"(", "complexPoly", ")"}]}]}], "]"}], ",", 
            RowBox[{
             RowBox[{"angleSortCond", "[", 
              RowBox[{"p", ",", "#1", ",", "#2"}], "]"}], " ", "&"}]}], 
           "]"}]}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
         RowBox[{"(*", 
          RowBox[{
          "get", " ", "the", " ", "intersection", " ", "of", " ", "lines", 
           " ", "for", " ", "the", " ", "Infinteline"}], "*)"}], 
         "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"SegmentIntersectionQ", "[", 
              RowBox[{"{", 
               RowBox[{"infiniteLine", ",", "#"}], "}"}], "]"}], ",", 
             RowBox[{"AppendTo", "[", 
              RowBox[{"jList", ",", 
               RowBox[{"Reverse", "@", "#"}]}], "]"}]}], "]"}], "&"}], "/@", 
          "listofAllLines"}], ";", "\[IndentingNewLine]", 
         "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
         RowBox[{"(*", 
          RowBox[{
          "Store", " ", "the", " ", "sorted", " ", "values", " ", "in", " ", 
           "J", " ", "list"}], "*)"}], "\[IndentingNewLine]", 
         RowBox[{"jList", "=", 
          RowBox[{"Sort", "[", 
           RowBox[{"jList", ",", 
            RowBox[{
             RowBox[{"distSortCond", "[", 
              RowBox[{"infiniteLine", ",", "#1", ",", "#2", ",", "p"}], "]"}],
              "&"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
         RowBox[{"AppendTo", "[", 
          RowBox[{"JlineList", ",", "jList"}], "]"}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"AppendTo", "[", 
          RowBox[{"JlineList", ",", "jList"}], "]"}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"lvLine", "=", 
          RowBox[{"First", "@", "jList"}]}], ";", "\[IndentingNewLine]", 
         RowBox[{"fvPoint", "=", 
          RowBox[{"LineIntersectionPoint", "[", 
           RowBox[{"{", 
            RowBox[{"lvLine", ",", "infiniteLine"}], "}"}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"AppendTo", "[", 
          RowBox[{"visibleSList", ",", 
           RowBox[{"{", 
            RowBox[{"p", ",", "fvPoint"}], "}"}]}], "]"}], ";", 
         "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
         RowBox[{"(*", 
          RowBox[{
          "Find", " ", "the", " ", "line", " ", "which", " ", "is", " ", 
           "closest", " ", "and", " ", "also", " ", "visible"}], "*)"}], 
         "\[IndentingNewLine]", 
         RowBox[{"Table", "[", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"SegmentIntersectionQ", "[", 
              RowBox[{"{", 
               RowBox[{"lvLine", ",", 
                RowBox[{
                "jList", "\[LeftDoubleBracket]", "i", 
                 "\[RightDoubleBracket]"}]}], "}"}], "]"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"startJlistInt", "=", 
               RowBox[{"N", "@", 
                RowBox[{"LineIntersectionPoint", "[", 
                 RowBox[{"{", 
                  RowBox[{"lvLine", ",", 
                   RowBox[{
                   "jList", "\[LeftDoubleBracket]", "i", 
                    "\[RightDoubleBracket]"}]}], "}"}], "]"}]}]}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"noIntersection", "[", 
                 RowBox[{"p", ",", "startJlistInt", ",", "listofAllLines"}], 
                 "]"}], ",", "\[IndentingNewLine]", 
                RowBox[{
                 RowBox[{"AppendTo", "[", 
                  RowBox[{"visibleList", ",", "startJlistInt"}], "]"}], ";", 
                 "\[IndentingNewLine]", 
                 RowBox[{"If", "[", 
                  RowBox[{
                   RowBox[{
                    RowBox[{
                    "startJlistInt", "\[LeftDoubleBracket]", "2", 
                    "\[RightDoubleBracket]"}], ">", 
                    RowBox[{
                    "p", "\[LeftDoubleBracket]", "2", 
                    "\[RightDoubleBracket]"}]}], ",", 
                   RowBox[{"lvLine", "=", 
                    RowBox[{
                    "jList", "\[LeftDoubleBracket]", "i", 
                    "\[RightDoubleBracket]"}]}]}], "]"}]}]}], "]"}]}]}], 
            "\[IndentingNewLine]", "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"i", ",", "1", ",", 
             RowBox[{"Length", "@", "jList"}]}], "}"}]}], "]"}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"AppendTo", "[", 
          RowBox[{"lvLineList", ",", "lvLine"}], "]"}], ";", 
         "\[IndentingNewLine]", "\[IndentingNewLine]", 
         RowBox[{"(*", 
          RowBox[{
          "Total", " ", "number", " ", "of", " ", "polygon", " ", 
           "vertices"}], "*)"}], "\[IndentingNewLine]", 
         RowBox[{"m", "=", 
          RowBox[{"Length", "@", "sortedList"}]}], ";", "\[IndentingNewLine]",
          "\[IndentingNewLine]", 
         RowBox[{"(*", 
          RowBox[{
          "Loop", " ", "around", " ", "all", " ", "the", " ", "vertices", " ",
            "of", " ", "all", " ", "the", " ", "polygons"}], "*)"}], 
         "\[IndentingNewLine]", 
         RowBox[{"For", "[", 
          RowBox[{
           RowBox[{"i", "=", "1"}], ",", 
           RowBox[{"i", "\[LessEqual]", " ", "m"}], ",", 
           RowBox[{"i", "++"}], ",", "\[IndentingNewLine]", 
           "\[IndentingNewLine]", 
           RowBox[{"(*", " ", 
            RowBox[{"Intialize", " ", "all", " ", "the", " ", "variabes"}], 
            "*)"}], "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{
             RowBox[{"{", 
              RowBox[{"a", ",", "b", ",", "c"}], "}"}], "=", 
             RowBox[{"sortedList", "\[LeftDoubleBracket]", 
              RowBox[{"i", ",", 
               RowBox[{"1", ";;", "3"}]}], "\[RightDoubleBracket]"}]}], ";", 
            "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"prevA", ",", "prevB", ",", "prevC"}], "}"}], 
             "\[IndentingNewLine]", "=", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"i", "\[NotEqual]", " ", "1"}], ",", 
               RowBox[{"sortedList", "\[LeftDoubleBracket]", 
                RowBox[{
                 RowBox[{"i", "-", "1"}], ",", 
                 RowBox[{"1", ";;", "3"}]}], "\[RightDoubleBracket]"}], ",", 
               RowBox[{"sortedList", "\[LeftDoubleBracket]", 
                RowBox[{"m", ",", 
                 RowBox[{"1", ";;", "3"}]}], "\[RightDoubleBracket]"}]}], 
              "]"}]}], ";", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"postA", ",", "postB", ",", "postC"}], "}"}], 
             "\[IndentingNewLine]", "=", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"i", "\[NotEqual]", " ", "m"}], ",", 
               RowBox[{"sortedList", "\[LeftDoubleBracket]", 
                RowBox[{
                 RowBox[{"i", "+", "1"}], ",", 
                 RowBox[{"1", ";;", "3"}]}], "\[RightDoubleBracket]"}], ",", 
               RowBox[{"sortedList", "\[LeftDoubleBracket]", 
                RowBox[{"1", ",", 
                 RowBox[{"1", ";;", "3"}]}], "\[RightDoubleBracket]"}]}], 
              "]"}]}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
            RowBox[{"(*", 
             RowBox[{
              RowBox[{
              "for", " ", "collinearity", " ", "between", " ", "current", " ",
                "vertice"}], ",", " ", 
              RowBox[{
               RowBox[{
               "next", " ", "vertice", " ", "and", " ", "point", " ", "p", 
                " ", "then", " ", "make", " ", "them", " ", "non"}], "-", 
               "collinear"}]}], "*)"}], "\[IndentingNewLine]", 
            RowBox[{"tb", "=", 
             RowBox[{"N", "@", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"pointOnSegmentQ", "[", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"p", ",", "postB"}], "}"}], ",", "b"}], "]"}], ",", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"postB", "\[Equal]", " ", "a"}], "||", 
                   RowBox[{"pbaAngle", " ", "\[LessEqual]", 
                    RowBox[{"Pi", "/", "3"}]}]}], ",", 
                  RowBox[{"b", "+", 
                   RowBox[{"0.00001", 
                    RowBox[{"normalVector", "[", 
                    RowBox[{"{", 
                    RowBox[{"a", ",", "p"}], "}"}], "]"}]}]}], ",", 
                  "\[IndentingNewLine]", 
                  RowBox[{"b", "-", 
                   RowBox[{"0.00001", 
                    RowBox[{"normalVector", "[", 
                    RowBox[{"{", 
                    RowBox[{"postB", ",", "p"}], "}"}], "]"}]}]}]}], "]"}], 
                ",", "b"}], "]"}]}]}], ";", "\[IndentingNewLine]", 
            "\[IndentingNewLine]", 
            RowBox[{"(*", 
             RowBox[{"List", " ", "variables"}], "*)"}], 
            "\[IndentingNewLine]", 
            RowBox[{"abcList", "=", 
             RowBox[{"{", 
              RowBox[{"a", ",", "tb", ",", "c"}], "}"}]}], ";", 
            "\[IndentingNewLine]", 
            RowBox[{"ba", "=", 
             RowBox[{"{", 
              RowBox[{"b", ",", "a"}], "}"}]}], ";", 
            RowBox[{"bc", "=", 
             RowBox[{"{", 
              RowBox[{"b", ",", "c"}], "}"}]}], ";", 
            RowBox[{"pb", "=", 
             RowBox[{"{", 
              RowBox[{"p", ",", "b"}], "}"}]}], ";", "\[IndentingNewLine]", 
            "\[IndentingNewLine]", 
            RowBox[{"(*", 
             RowBox[{"get", " ", "all", " ", "the", " ", "angles"}], "*)"}], 
            "\[IndentingNewLine]", 
            RowBox[{"pbAngle", "=", 
             RowBox[{"getAngle", "[", 
              RowBox[{"{", 
               RowBox[{"p", ",", "b"}], "}"}], "]"}]}], ";", 
            RowBox[{"pprevbAngle", "=", 
             RowBox[{"getAngle", "[", 
              RowBox[{"{", 
               RowBox[{"p", ",", "prevB"}], "}"}], "]"}]}], ";", 
            "\[IndentingNewLine]", 
            RowBox[{"pbaAngle", "=", 
             RowBox[{"getClockwiseAngle", "[", 
              RowBox[{"p", ",", "b", ",", "a"}], "]"}]}], ";", 
            RowBox[{"pbcAngle", "=", 
             RowBox[{"getClockwiseAngle", "[", 
              RowBox[{"p", ",", "b", ",", "c"}], "]"}]}], ";", 
            "\[IndentingNewLine]", 
            RowBox[{"pPostAB", "=", 
             RowBox[{"getClockwiseAngle", "[", 
              RowBox[{"p", ",", "postB", ",", "postA"}], "]"}]}], ";", 
            "\[IndentingNewLine]", 
            RowBox[{"pPostBC", "=", 
             RowBox[{"getClockwiseAngle", "[", 
              RowBox[{"p", ",", "postB", ",", "postC"}], "]"}]}], ";", 
            "\[IndentingNewLine]", "\[IndentingNewLine]", 
            RowBox[{"(*", 
             RowBox[{"Get", " ", "all", " ", "the", " ", "Collinearity"}], 
             " ", "*)"}], "\[IndentingNewLine]", 
            RowBox[{"pbaColl", "=", 
             RowBox[{"Not", "@", 
              RowBox[{"(", 
               RowBox[{"collinearQ", "[", 
                RowBox[{"{", 
                 RowBox[{"p", ",", "b", ",", "a"}], "}"}], "]"}], ")"}]}]}], 
            ";", "\[IndentingNewLine]", 
            RowBox[{"pbcColl", "=", 
             RowBox[{"Not", "@", 
              RowBox[{"(", 
               RowBox[{"collinearQ", "[", 
                RowBox[{"{", 
                 RowBox[{"p", ",", "b", ",", "c"}], "}"}], "]"}], ")"}]}]}], 
            ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
            RowBox[{"(*", 
             RowBox[{
             "Conditions", " ", "to", " ", "determine", " ", "whether", " ", 
              "a", " ", "vertex", " ", "is", " ", "visible", " ", "or", " ", 
              "not"}], "*)"}], "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"intersectInteriorQRev2", "[", 
               RowBox[{"p", ",", "abcList"}], "]"}], ",", 
              RowBox[{"wi", "=", "False"}], ",", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"i", "\[Equal]", "1"}], " ", "||", 
                 RowBox[{"Not", "@", 
                  RowBox[{"pointOnSegmentQ", "[", 
                   RowBox[{"pb", ",", "a"}], "]"}]}]}], ",", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{"noIntersection", "[", 
                   RowBox[{"p", ",", "b", ",", "jList"}], "]"}], ",", 
                  RowBox[{"If", "[", 
                   RowBox[{
                    RowBox[{"i", "\[NotEqual]", "1"}], ",", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"pbAngle", "\[NotEqual]", " ", "pprevbAngle"}], 
                    ",", 
                    RowBox[{"wi", "=", "True"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"b", "\[Equal]", " ", "prevA"}], " ", "||", " ", 
                    RowBox[{"b", "\[Equal]", "prevC"}], " ", "||", " ", 
                    RowBox[{"b", "\[Equal]", " ", "postA"}], " ", "||", " ", 
                    RowBox[{"b", "\[Equal]", "postC"}], " ", "||", " ", 
                    "gFlag"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"wi", "=", "True"}], ",", 
                    RowBox[{"wi", "=", "False"}]}], "]"}]}], "]"}], ",", 
                    RowBox[{"wi", "=", "True"}]}], "]"}], ",", 
                  RowBox[{"wi", "=", "False"}]}], "]"}], ",", 
                RowBox[{"If", "[", 
                 RowBox[{"wip", ",", 
                  RowBox[{"If", "[", 
                   RowBox[{
                    RowBox[{"noIntersection", "[", 
                    RowBox[{"b", ",", "a", ",", "jList"}], "]"}], ",", 
                    RowBox[{"wi", "=", "True"}], ",", 
                    RowBox[{"wi", "=", "False"}]}], "]"}], ",", 
                  RowBox[{"wi", "=", "False"}]}], "]"}]}], "]"}]}], "]"}], 
            ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
            RowBox[{"(*", " ", 
             RowBox[{
             "If", " ", "the", " ", "vertice", " ", "os", " ", "visible"}], 
             "*)"}], "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{"wi", ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"If", "[", 
                RowBox[{
                 RowBox[{"SegmentIntersectionQ", "[", 
                  RowBox[{"{", 
                   RowBox[{"lvLine", ",", "bc"}], "}"}], "]"}], ",", 
                 "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{"bcVisiInt", "=", 
                   RowBox[{"N", "@", 
                    RowBox[{"LineIntersectionPoint", "[", 
                    RowBox[{"{", 
                    RowBox[{"lvLine", ",", "bc"}], "}"}], "]"}]}]}], ";", 
                  "\[IndentingNewLine]", 
                  RowBox[{"If", "[", 
                   RowBox[{
                    RowBox[{"noIntersection", "[", 
                    RowBox[{"p", ",", "bcVisiInt", ",", "listofAllLines"}], 
                    "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"AppendTo", "[", 
                    RowBox[{"visibleList", ",", "bcVisiInt"}], "]"}]}], 
                   "]"}]}]}], "\[IndentingNewLine]", "]"}], ";", 
               "\[IndentingNewLine]", "\[IndentingNewLine]", 
               RowBox[{"(*", 
                RowBox[{"Glancing", " ", "blow", " ", "Condition"}], "*)"}], 
               "\[IndentingNewLine]", 
               RowBox[{"If", "[", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"glancingBlow", "[", 
                   RowBox[{"p", ",", "abcList"}], "]"}], ")"}], ",", 
                 RowBox[{"gFlag", "=", "False"}], ",", 
                 RowBox[{"gFlag", "=", "True"}]}], " ", "]"}], ";", 
               "\[IndentingNewLine]", 
               RowBox[{"If", "[", 
                RowBox[{
                 RowBox[{"gFlag", "&&", 
                  RowBox[{"(", 
                   RowBox[{"Not", "@", 
                    RowBox[{"pointOnSegmentQ", "[", 
                    RowBox[{"pb", ",", "prevB"}], "]"}]}], ")"}]}], ",", 
                 "\[IndentingNewLine]", 
                 RowBox[{"(*", 
                  RowBox[{
                  "Find", " ", "the", " ", "glancing", " ", "intersection", 
                   " ", "point"}], "*)"}], "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{"gLine", "=", 
                   RowBox[{"extendedLine", "[", 
                    RowBox[{"p", ",", "tb"}], "]"}]}], ";", 
                  "\[IndentingNewLine]", 
                  RowBox[{"giList", " ", "=", " ", 
                   RowBox[{"Sort", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"DeleteCases", "[", "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"SegmentIntersectionQ", "[", 
                    RowBox[{"{", 
                    RowBox[{"gLine", ",", "#"}], "}"}], "]"}], "||", " ", 
                    RowBox[{"And", "[", 
                    RowBox[{
                    RowBox[{"b", "\[NotEqual]", 
                    RowBox[{
                    "#", "\[LeftDoubleBracket]", "2", 
                    "\[RightDoubleBracket]"}]}], ",", 
                    RowBox[{"pointOnSegmentQ", "[", 
                    RowBox[{"gLine", ",", 
                    RowBox[{"#", "\[LeftDoubleBracket]", "2", 
                    "\[RightDoubleBracket]"}]}], "]"}]}], "]"}], "||", " ", 
                    RowBox[{"And", "[", 
                    RowBox[{
                    RowBox[{"b", "\[NotEqual]", 
                    RowBox[{
                    "#", "\[LeftDoubleBracket]", "1", 
                    "\[RightDoubleBracket]"}]}], ",", 
                    RowBox[{"pointOnSegmentQ", "[", 
                    RowBox[{"gLine", ",", 
                    RowBox[{
                    "#", "\[LeftDoubleBracket]", "1", 
                    "\[RightDoubleBracket]"}]}], "]"}]}], "]"}]}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"SegmentIntersectionQ", "[", 
                    RowBox[{"{", 
                    RowBox[{"gLine", ",", "#"}], "}"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"N", "@", 
                    RowBox[{"LineIntersectionPoint", "[", 
                    RowBox[{"{", 
                    RowBox[{"gLine", ",", "#"}], "}"}], "]"}]}], ",", "#"}], 
                    "}"}], ",", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"And", "[", 
                    RowBox[{
                    RowBox[{"b", "\[NotEqual]", 
                    RowBox[{
                    "#", "\[LeftDoubleBracket]", "2", 
                    "\[RightDoubleBracket]"}]}], ",", 
                    RowBox[{"pointOnSegmentQ", "[", 
                    RowBox[{"gLine", ",", 
                    RowBox[{
                    "#", "\[LeftDoubleBracket]", "2", 
                    "\[RightDoubleBracket]"}]}], "]"}]}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    "#", "\[LeftDoubleBracket]", "2", 
                    "\[RightDoubleBracket]"}], ",", "#"}], "}"}], ",", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"And", "[", 
                    RowBox[{
                    RowBox[{"b", "\[NotEqual]", 
                    RowBox[{
                    "#", "\[LeftDoubleBracket]", "1", 
                    "\[RightDoubleBracket]"}]}], ",", 
                    RowBox[{"pointOnSegmentQ", "[", 
                    RowBox[{"gLine", ",", 
                    RowBox[{
                    "#", "\[LeftDoubleBracket]", "1", 
                    "\[RightDoubleBracket]"}]}], "]"}]}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    "#", "\[LeftDoubleBracket]", "1", 
                    "\[RightDoubleBracket]"}], ",", "#"}], "}"}]}], "]"}]}], 
                    "\[IndentingNewLine]", "]"}]}], "]"}]}], "]"}], "&"}], "/@", 
                    RowBox[{"DeleteCases", "[", 
                    RowBox[{
                    RowBox[{"DeleteCases", "[", 
                    RowBox[{"listofAllLines", ",", 
                    RowBox[{"{", 
                    RowBox[{"b", ",", "_"}], "}"}]}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"_", ",", "b"}], "}"}]}], "]"}]}], 
                    "\[IndentingNewLine]", ")"}], ",", "Null"}], "]"}], ")"}],
                     ",", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"EuclideanDistance", "[", 
                    RowBox[{"p", ",", 
                    RowBox[{
                    "#1", "\[LeftDoubleBracket]", "1", 
                    "\[RightDoubleBracket]"}]}], "]"}], "<", " ", 
                    RowBox[{"EuclideanDistance", "[", 
                    RowBox[{"p", ",", 
                    RowBox[{
                    "#2", "\[LeftDoubleBracket]", "1", 
                    "\[RightDoubleBracket]"}]}], "]"}]}], "&"}]}], "]"}]}], 
                  ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
                  RowBox[{"(*", 
                   RowBox[{
                   "Codition", " ", "to", " ", "decide", " ", "the", " ", 
                    "order", " ", "of", " ", "appending", " ", "the", " ", 
                    "vertice", " ", "and", " ", "the", " ", "intersection", 
                    " ", "point"}], "*)"}], "\[IndentingNewLine]", 
                  RowBox[{"If", "[", 
                   RowBox[{
                    RowBox[{"giList", "\[NotEqual]", 
                    RowBox[{"{", "}"}]}], ",", "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{"giPoint", "=", 
                    RowBox[{"giList", "\[LeftDoubleBracket]", 
                    RowBox[{"1", ",", "1"}], "\[RightDoubleBracket]"}]}], ";", 
                    RowBox[{"giLine", "=", 
                    RowBox[{"giList", "\[LeftDoubleBracket]", 
                    RowBox[{"1", ",", "2"}], "\[RightDoubleBracket]"}]}], ";",
                     "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"pointOnSegmentQ", "[", 
                    RowBox[{"lvLine", ",", "giPoint"}], "]"}], "&&", " ", 
                    RowBox[{
                    RowBox[{"Chop", "[", 
                    RowBox[{"getAngle", "[", "pb", "]"}], "]"}], 
                    "\[NotEqual]", " ", "0"}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"i", "\[Equal]", "1"}], "&&", 
                    RowBox[{"pbaAngle", "\[LessEqual]", " ", 
                    RowBox[{"Pi", "/", "2"}]}]}], ")"}], 
                    "\[IndentingNewLine]", "||", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"SegmentIntersectionQ", "[", 
                    RowBox[{"{", 
                    RowBox[{"gLine", ",", "lvLine"}], "}"}], "]"}], "&&", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"LineIntersectionPoint", "[", 
                    RowBox[{"{", 
                    RowBox[{"gLine", ",", "lvLine"}], "}"}], "]"}], 
                    "\[Equal]", "giPoint"}], ")"}]}], ")"}], "||", 
                    RowBox[{"giPoint", "\[Equal]", 
                    RowBox[{
                    "lvLine", "\[LeftDoubleBracket]", "2", 
                    "\[RightDoubleBracket]"}]}]}], ",", "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{"visibleList", "=", 
                    RowBox[{"Join", "[", 
                    RowBox[{"visibleList", ",", 
                    RowBox[{"{", 
                    RowBox[{"giPoint", ",", "b"}], "}"}]}], "]"}]}], ";", 
                    RowBox[{"lvLine", "=", "ba"}]}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{"visibleList", "=", 
                    RowBox[{"Join", "[", 
                    RowBox[{"visibleList", ",", 
                    RowBox[{"{", 
                    RowBox[{"b", ",", "giPoint"}], "}"}]}], "]"}]}], ";", 
                    RowBox[{"lvLine", "=", "giLine"}]}]}], "]"}]}]}], "]"}], 
                  ";"}], "\[IndentingNewLine]", ",", "\[IndentingNewLine]", 
                 RowBox[{"(*", 
                  RowBox[{"If", " ", "not", " ", "Glancing", " ", "Blow"}], 
                  "*)"}], "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{"If", "[", 
                   RowBox[{
                    RowBox[{"(", 
                    RowBox[{"pbAngle", "\[NotEqual]", " ", "pprevbAngle"}], 
                    " ", ")"}], ",", 
                    RowBox[{"AppendTo", "[", 
                    RowBox[{"visibleList", ",", "b"}], "]"}]}], "]"}], ";", 
                  "\[IndentingNewLine]", 
                  RowBox[{"lvLine", "=", "ba"}], ";", "\[IndentingNewLine]", 
                  RowBox[{"Table", "[", 
                   RowBox[{
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"SegmentIntersectionQ", "[", 
                    RowBox[{"{", 
                    RowBox[{"ba", ",", 
                    RowBox[{
                    "jList", "\[LeftDoubleBracket]", "i", 
                    "\[RightDoubleBracket]"}]}], "}"}], "]"}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{"abNotGlaInt", "=", 
                    RowBox[{"N", "@", 
                    RowBox[{"LineIntersectionPoint", "[", 
                    RowBox[{"{", 
                    RowBox[{"ba", ",", 
                    RowBox[{
                    "jList", "\[LeftDoubleBracket]", "i", 
                    "\[RightDoubleBracket]"}]}], "}"}], "]"}]}]}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"noIntersection", "[", 
                    RowBox[{"p", ",", "abNotGlaInt", ",", "listofAllLines"}], 
                    "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{"AppendTo", "[", 
                    RowBox[{"visibleList", ",", "abNotGlaInt"}], "]"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"lvLine", "=", 
                    RowBox[{
                    "jList", "\[LeftDoubleBracket]", "i", 
                    "\[RightDoubleBracket]"}]}]}]}], "]"}]}]}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"i", ",", "1", ",", 
                    RowBox[{"Length", "@", "jList"}], ",", "1"}], "}"}]}], 
                   "]"}]}]}], "]"}]}], "\[IndentingNewLine]", ",", 
              "\[IndentingNewLine]", 
              RowBox[{"(*", 
               RowBox[{
               "If", " ", "it", " ", "is", " ", "not", " ", "a", " ", 
                "visible", " ", "vertice"}], "*)"}], "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"SegmentIntersectionQ", "[", 
                 RowBox[{"{", 
                  RowBox[{"pb", ",", "lvLine"}], "}"}], "]"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{
                 RowBox[{"If", "[", 
                  RowBox[{
                   RowBox[{"pbaAngle", "<", "Pi"}], ",", 
                   "\[IndentingNewLine]", 
                   RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"Not", "@", 
                    RowBox[{"leftOrRight", "[", 
                    RowBox[{"p", ",", "b", ",", "a"}], "]"}]}], " ", "&&", 
                    " ", 
                    RowBox[{"SegmentIntersectionQ", "[", 
                    RowBox[{"{", 
                    RowBox[{"lvLine", ",", "ba"}], "}"}], "]"}]}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{"abNotVisInt", "=", 
                    RowBox[{"N", "@", 
                    RowBox[{"LineIntersectionPoint", "[", 
                    RowBox[{"{", 
                    RowBox[{"lvLine", ",", "ba"}], "}"}], "]"}]}]}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"noIntersection", "[", 
                    RowBox[{"p", ",", "abNotVisInt", ",", "listofAllLines"}], 
                    "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{"AppendTo", "[", 
                    RowBox[{"visibleList", ",", "abNotVisInt"}], "]"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"lvLine", "=", "ba"}]}]}], "]"}]}]}], "]"}]}], 
                  "]"}], ";", 
                 RowBox[{"If", "[", 
                  RowBox[{
                   RowBox[{"pbcAngle", "<", "Pi"}], ",", 
                   "\[IndentingNewLine]", 
                   RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"Not", "@", 
                    RowBox[{"leftOrRight", "[", 
                    RowBox[{"p", ",", "b", ",", "c"}], "]"}]}], "&&", " ", 
                    RowBox[{"SegmentIntersectionQ", "[", 
                    RowBox[{"{", 
                    RowBox[{"lvLine", ",", "bc"}], "}"}], "]"}]}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{"bcNotVisInt", "=", 
                    RowBox[{"N", "@", 
                    RowBox[{"LineIntersectionPoint", "[", 
                    RowBox[{"{", 
                    RowBox[{"lvLine", ",", "bc"}], "}"}], "]"}]}]}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"noIntersection", "[", 
                    RowBox[{"p", ",", "bcNotVisInt", ",", "listofAllLines"}], 
                    "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{"AppendTo", "[", 
                    RowBox[{"visibleList", ",", "bcNotVisInt"}], "]"}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"lvLine", "=", "bc"}]}]}], "]"}]}]}], "]"}]}], 
                  "]"}]}], "\[IndentingNewLine]", ",", 
                RowBox[{
                 RowBox[{
                  RowBox[{"If", "[", 
                   RowBox[{
                    RowBox[{"SegmentIntersectionQ", "[", 
                    RowBox[{"{", 
                    RowBox[{"#", ",", "lvLine"}], "}"}], "]"}], ",", 
                    RowBox[{
                    RowBox[{"AppendTo", "[", 
                    RowBox[{"visibleList", ",", 
                    RowBox[{"LineIntersectionPoint", "[", 
                    RowBox[{"{", 
                    RowBox[{"#", ",", "lvLine"}], "}"}], "]"}]}], "]"}], ";", 
                    RowBox[{"lvLine", "=", "#"}]}]}], "]"}], "&"}], "/@", 
                 "jList"}]}], "]"}]}], "]"}], ";", "\[IndentingNewLine]", 
            "\[IndentingNewLine]", 
            RowBox[{"(*", 
             RowBox[{"Update", " ", "the", " ", "Jlist"}], "*)"}], 
            "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"pbaAngle", "<", "Pi"}], ",", 
              RowBox[{"AppendTo", "[", 
               RowBox[{"jList", ",", "ba"}], "]"}]}], "]"}], ";", 
            "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"pbcAngle", "<", "Pi"}], ",", 
              RowBox[{"AppendTo", "[", 
               RowBox[{"jList", ",", "bc"}], "]"}]}], "]"}], ";", 
            "\[IndentingNewLine]", 
            RowBox[{"jList", "=", 
             RowBox[{"(", 
              RowBox[{"DeleteCases", "[", 
               RowBox[{"jList", ",", 
                RowBox[{"{", 
                 RowBox[{"_", ",", "b"}], "}"}]}], "]"}], ")"}]}], ";", 
            "\[IndentingNewLine]", "\[IndentingNewLine]", 
            RowBox[{"(*", 
             RowBox[{
             "Update", " ", "the", " ", "wip", " ", "to", " ", "previous", 
              " ", "wi", " ", 
              RowBox[{"(", "vertice", ")"}]}], "*)"}], "\[IndentingNewLine]", 
            RowBox[{"wip", "=", "wi"}], ";", "\[IndentingNewLine]", 
            "\[IndentingNewLine]", 
            RowBox[{"(*", 
             RowBox[{
             "Append", " ", "all", " ", "the", " ", "set", " ", "of", " ", 
              "lists"}], "*)"}], "\[IndentingNewLine]", 
            RowBox[{"AppendTo", "[", 
             RowBox[{"visibleSList", ",", 
              RowBox[{"Join", "[", 
               RowBox[{
                RowBox[{"Join", "[", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"p", ",", "fvPoint"}], "}"}], ",", "visibleList"}],
                  "]"}], ",", 
                RowBox[{"{", "p", "}"}]}], "]"}]}], "]"}], ";", 
            "\[IndentingNewLine]", 
            RowBox[{"AppendTo", "[", 
             RowBox[{"JlineList", ",", "jList"}], "]"}], ";", 
            "\[IndentingNewLine]", 
            RowBox[{"AppendTo", "[", 
             RowBox[{"lvLineList", ",", "lvLine"}], "]"}]}]}], 
          "\[IndentingNewLine]", "]"}], ";", "\[IndentingNewLine]", 
         RowBox[{"(*", 
          RowBox[{"Update", " ", "the", " ", "prev", " ", "P"}], "*)"}], 
         "\[IndentingNewLine]", 
         RowBox[{"oldP", "=", "p"}]}]}], "\[IndentingNewLine]", "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{
       "Append", " ", "the", " ", "Final", " ", "visible", " ", "region"}], 
       "*)"}], "\[IndentingNewLine]", 
      RowBox[{"PrependTo", "[", 
       RowBox[{"sortedList", ",", 
        RowBox[{"{", 
         RowBox[{"p", ",", "fvPoint"}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"AppendTo", "[", 
       RowBox[{"sortedList", ",", 
        RowBox[{"{", 
         RowBox[{"p", ",", "fvPoint"}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"AppendTo", "[", 
       RowBox[{"visibleSList", ",", "visibleList"}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"AppendTo", "[", 
       RowBox[{"lvLineList", ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", "}"}], ",", 
          RowBox[{"{", "}"}]}], "}"}]}], "]"}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"Graphics", "[", 
       RowBox[{
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Opacity", "[", "0.5", "]"}], ",", 
             RowBox[{"EdgeForm", "[", 
              RowBox[{"{", "Thin", "}"}], "]"}], ",", "Transparent", ",", 
             RowBox[{"Polygon", "@", "complexPoly"}]}], "}"}], "}"}], 
          "\[IndentingNewLine]", ",", 
          RowBox[{"{", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Opacity", "[", "0.5", "]"}], ",", 
             RowBox[{"EdgeForm", "[", 
              RowBox[{"{", "Thin", "}"}], "]"}], ",", "Transparent", ",", 
             RowBox[{"Polygon", "@", "workspace"}]}], "}"}], "}"}], 
          "\[IndentingNewLine]", ",", 
          RowBox[{"{", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"EdgeForm", "[", 
              RowBox[{"{", 
               RowBox[{"Lighter", "[", 
                RowBox[{"Purple", ",", "0.8"}], "]"}], "}"}], "]"}], ",", 
             RowBox[{"Opacity", "[", "0.5", "]"}], ",", "Yellow", ",", 
             RowBox[{"Polygon", "@", 
              RowBox[{"(", "visibleList", ")"}]}]}], "}"}], "}"}], 
          "\[IndentingNewLine]", "\[IndentingNewLine]", ",", 
          RowBox[{"{", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"EdgeForm", "[", 
              RowBox[{"{", 
               RowBox[{"Lighter", "[", 
                RowBox[{"Purple", ",", "0.8"}], "]"}], "}"}], "]"}], ",", 
             RowBox[{"Opacity", "[", "0.3", "]"}], ",", "Orange", ",", 
             RowBox[{"Polygon", "@", 
              RowBox[{"(", 
               RowBox[{
               "visibleSList", "\[LeftDoubleBracket]", "s", 
                "\[RightDoubleBracket]"}], ")"}]}]}], "}"}], "}"}], 
          "\[IndentingNewLine]", ",", 
          RowBox[{"{", 
           RowBox[{"{", 
            RowBox[{"Blue", ",", 
             RowBox[{"PointSize", "\[Rule]", "Medium"}], ",", 
             RowBox[{"Point", "@", "p"}], ",", " ", 
             RowBox[{"Circle", "[", 
              RowBox[{"p", ",", "0.2", ",", 
               RowBox[{"{", 
                RowBox[{"0", ",", 
                 RowBox[{"getAngle", "[", 
                  RowBox[{"{", 
                   RowBox[{"p", ",", 
                    RowBox[{"sortedList", "\[LeftDoubleBracket]", 
                    RowBox[{"s", ",", "2"}], "\[RightDoubleBracket]"}]}], 
                   "}"}], "]"}]}], "}"}]}], "]"}]}], "}"}], "}"}], 
          "\[IndentingNewLine]", ",", 
          RowBox[{"{", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Opacity", "[", "0.4", "]"}], ",", "Blue", ",", 
             RowBox[{"Line", "@", 
              RowBox[{"{", 
               RowBox[{"p", ",", 
                RowBox[{"sortedList", "\[LeftDoubleBracket]", 
                 RowBox[{"s", ",", "2"}], "\[RightDoubleBracket]"}]}], 
               "}"}]}]}], "}"}], "}"}], "\[IndentingNewLine]", ",", 
          RowBox[{"{", 
           RowBox[{"{", 
            RowBox[{"Orange", ",", 
             RowBox[{"Thickness", "[", " ", "0.01", "]"}], ",", 
             RowBox[{"Line", "@", 
              RowBox[{
              "lvLineList", "\[LeftDoubleBracket]", "s", 
               "\[RightDoubleBracket]"}]}]}], "}"}], "}"}], 
          "\[IndentingNewLine]", ",", 
          RowBox[{"{", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Thickness", "[", " ", "0.005", "]"}], ",", "Green", ",", 
             RowBox[{"Line", "@", 
              RowBox[{
              "JlineList", "\[LeftDoubleBracket]", "s", 
               "\[RightDoubleBracket]"}]}]}], "}"}], "}"}], 
          "\[IndentingNewLine]", ",", 
          RowBox[{"{", 
           RowBox[{"{", 
            RowBox[{"Red", ",", 
             RowBox[{"Point", "@", "visibleList"}]}], "}"}], "}"}], 
          "\[IndentingNewLine]", ",", 
          RowBox[{"PreserveImageOptions", "\[Rule]", " ", "True"}]}], "}"}], 
        "\[IndentingNewLine]", ",", 
        RowBox[{"PlotRange", "\[Rule]", " ", 
         RowBox[{"6.05", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "1"}], ",", "1"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "1"}], ",", "1"}], "}"}]}], "}"}]}]}], 
        "\[IndentingNewLine]", ",", 
        RowBox[{"ImageSize", "->", "Large"}]}], "\[IndentingNewLine]", 
       "]"}]}]}], "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"s", ",", "1", ",", "\"\<Vertices\>\""}], "}"}], ",", "1", ",", 
     RowBox[{"m", "+", "2"}], ",", "1"}], "}"}], "\[IndentingNewLine]", ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"m", ",", "1"}], "}"}], ",", 
     RowBox[{"ControlType", "\[Rule]", " ", "None"}]}], "}"}], 
   "\[IndentingNewLine]", ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"pts", ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"0.5", ",", "5"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "4.3`"}], ",", "2.65"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "5"}], ",", 
           RowBox[{"-", "0.169"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "5"}], ",", 
           RowBox[{"-", "3.`"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"3.5`", ",", 
           RowBox[{"-", "5"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", 
           RowBox[{"-", "2.5`"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"1.25`", ",", "0"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"4.25`", ",", "0"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"0.5`", ",", "1.15"}], "}"}], "\[IndentingNewLine]", ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "1.15"}], ",", "0.75`"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"1.22", ",", 
           RowBox[{"-", "4.19"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "1.5"}], ",", "1.5"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "1.83`"}], ",", "0.47"}], "}"}]}], "}"}]}], "}"}], 
     ",", 
     RowBox[{"6", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "1"}], ",", 
        RowBox[{"-", "1"}]}], "}"}]}], ",", 
     RowBox[{"6", 
      RowBox[{"{", 
       RowBox[{"1", ",", "1"}], "}"}]}], ",", "Locator", ",", 
     RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
     RowBox[{"FrameMargins", "\[Rule]", 
      RowBox[{"-", "5"}]}]}], "}"}]}], "\[IndentingNewLine]", "]"}]], "Input",
 CellChangeTimes->{{3.7610632850026383`*^9, 3.7610634044432917`*^9}, {
   3.7610634393800025`*^9, 3.76106366583322*^9}, {3.761063698951275*^9, 
   3.761064014200367*^9}, {3.76106406454311*^9, 3.7610640903980417`*^9}, {
   3.761064151318804*^9, 3.7610643227700787`*^9}, {3.7610643561995735`*^9, 
   3.7610644721828504`*^9}, {3.7610645156355233`*^9, 
   3.7610645469549627`*^9}, {3.7610654017897687`*^9, 
   3.7610654404246683`*^9}, {3.7610661042570777`*^9, 
   3.7610661283642144`*^9}, {3.76106615902466*^9, 3.7610662625796537`*^9}, 
   3.761066356202894*^9, {3.7610664141790705`*^9, 3.7610664161879864`*^9}, {
   3.761066448209195*^9, 3.7610664611800375`*^9}, {3.761066608632526*^9, 
   3.761066610129567*^9}, {3.7610667663547916`*^9, 3.761067016841116*^9}, {
   3.7610670665970125`*^9, 3.7610671375792527`*^9}, {3.76106722167597*^9, 
   3.761067396307845*^9}, {3.7610674321168566`*^9, 3.76106744679383*^9}, {
   3.7610675372073355`*^9, 3.7610677631863213`*^9}, {3.7610678718503895`*^9, 
   3.7610678749426203`*^9}, {3.761067941656019*^9, 3.7610679538872633`*^9}, {
   3.7610680076367493`*^9, 3.7610680705723968`*^9}, {3.7610682208082695`*^9, 
   3.7610682334450207`*^9}, {3.7610684070249414`*^9, 
   3.7610684271108565`*^9}, {3.7610695288854094`*^9, 3.761069573160529*^9}, {
   3.761069643059186*^9, 3.761069840204541*^9}, {3.761069964249875*^9, 
   3.7610700239776583`*^9}, {3.7610701626851463`*^9, 3.761070165051691*^9}, {
   3.7610701986982927`*^9, 3.7610703116632147`*^9}, {3.7612713159758515`*^9, 
   3.7612713824898777`*^9}, {3.761271469588868*^9, 3.761271474538613*^9}, 
   3.7612715719240503`*^9, {3.76127167912918*^9, 3.7612717043756523`*^9}, {
   3.761271873437318*^9, 3.7612719321013565`*^9}, {3.7612720384627495`*^9, 
   3.7612720935713143`*^9}, {3.761272237592925*^9, 3.761272369191801*^9}, {
   3.7612724046140223`*^9, 3.761272408299162*^9}, {3.761272927692134*^9, 
   3.7612729282007437`*^9}, {3.761272969905201*^9, 3.761273051074975*^9}, {
   3.7612732117939854`*^9, 3.7612732568683944`*^9}, {3.7612737551424656`*^9, 
   3.7612737626095343`*^9}, {3.7615747207753363`*^9, 3.761574788256281*^9}, {
   3.7615749402685757`*^9, 3.7615749439218397`*^9}, {3.761576432071761*^9, 
   3.7615764457900505`*^9}, {3.7615765108230414`*^9, 
   3.7615765209998503`*^9}, {3.7615765531667986`*^9, 3.7615765550846806`*^9}, 
   3.7615781151762733`*^9, {3.76158145243258*^9, 3.7615814735925136`*^9}, {
   3.7615836110734425`*^9, 3.761583760113132*^9}, {3.761583802698967*^9, 
   3.7615839351790547`*^9}, {3.761584139444584*^9, 3.7615841719798126`*^9}, {
   3.7615842210310535`*^9, 3.761584223317712*^9}, {3.7615842658384*^9, 
   3.7615842678208838`*^9}, {3.76158434358031*^9, 3.761584728352324*^9}, {
   3.7615852703820295`*^9, 3.761585424317153*^9}, 3.7615854910318956`*^9, {
   3.7616058149661527`*^9, 3.7616058153361616`*^9}, {3.762210039433366*^9, 
   3.7622101448646517`*^9}, {3.7622102762886963`*^9, 3.76221030788791*^9}, {
   3.762210380421874*^9, 3.762210433261532*^9}, {3.762211092970248*^9, 
   3.762211440329764*^9}, {3.762211499374782*^9, 3.762211590246029*^9}, {
   3.7622117046467123`*^9, 3.7622117304267993`*^9}, {3.7622124779026546`*^9, 
   3.7622125856029615`*^9}, {3.762212620942935*^9, 3.7622127430779276`*^9}, {
   3.7622127874414597`*^9, 3.762212974887085*^9}, {3.7622133300516405`*^9, 
   3.762213414502288*^9}, {3.7622134648643513`*^9, 3.7622134932811584`*^9}, {
   3.762213526667012*^9, 3.762213558762929*^9}, {3.7622135926265354`*^9, 
   3.7622136139302692`*^9}, {3.762213655150919*^9, 3.762213761740939*^9}, {
   3.762213836930204*^9, 3.7622138465066676`*^9}, {3.762213916317742*^9, 
   3.762213951091195*^9}, {3.7623927320343447`*^9, 3.76239304478363*^9}, {
   3.762393149677205*^9, 3.7623931806144996`*^9}, {3.762393232701253*^9, 
   3.762393234105488*^9}, {3.76239331338515*^9, 3.762393317628816*^9}, {
   3.7623933562176685`*^9, 3.7623933622565036`*^9}, {3.7623933926931343`*^9, 
   3.7623934160566764`*^9}, {3.7623939136644044`*^9, 
   3.7623940201497374`*^9}, {3.762394251144202*^9, 3.7623942566883907`*^9}, {
   3.762394290660581*^9, 3.7623944682807484`*^9}, {3.7623945291819334`*^9, 
   3.762394534950496*^9}, {3.7623946350489044`*^9, 3.7623946773597927`*^9}, {
   3.762394809398458*^9, 3.762394835287246*^9}, {3.7623948741643324`*^9, 
   3.762394983777285*^9}, {3.7623950149988213`*^9, 3.762395081084118*^9}, {
   3.7623951204259925`*^9, 3.7623953284594746`*^9}, 3.762395374193233*^9, {
   3.762395498280487*^9, 3.7623955262846346`*^9}, {3.762395558434676*^9, 
   3.762395622201217*^9}, {3.762395777291175*^9, 3.7623959568262663`*^9}, {
   3.762396022102762*^9, 3.7623961191223927`*^9}, {3.762649414624845*^9, 
   3.7626494356513467`*^9}, {3.762650242499755*^9, 3.76265031563943*^9}, 
   3.762650452844496*^9, {3.762652503427812*^9, 3.7626525490861716`*^9}, {
   3.7626526493386354`*^9, 3.762652756312374*^9}, {3.7626527908524337`*^9, 
   3.7626528072076817`*^9}, {3.762652844546075*^9, 3.762652847262675*^9}, {
   3.7626529217958875`*^9, 3.7626529896814337`*^9}, {3.7626530200095477`*^9, 
   3.762653073362696*^9}, {3.762653104533358*^9, 3.762653109596302*^9}, {
   3.76265314158049*^9, 3.762653182662476*^9}, {3.7626532184967504`*^9, 
   3.7626532376760616`*^9}, {3.762653310977437*^9, 3.7626533550570507`*^9}, {
   3.7626533969074807`*^9, 3.762653558436535*^9}, {3.7626536064224405`*^9, 
   3.7626536296808896`*^9}, {3.762653706850101*^9, 3.762653714441229*^9}, {
   3.762653770446453*^9, 3.762653771680445*^9}, {3.762653827852303*^9, 
   3.762653828272382*^9}, {3.7626539580639906`*^9, 3.762654115331834*^9}, {
   3.762654371941435*^9, 3.7626544993697724`*^9}, {3.762654542845087*^9, 
   3.7626546822049456`*^9}, {3.762654900748481*^9, 3.762654925950856*^9}, {
   3.7626551537879615`*^9, 3.7626553158295794`*^9}, {3.7626554133921933`*^9, 
   3.762655416834526*^9}, {3.7626555324710903`*^9, 3.7626555387028446`*^9}, {
   3.762655587312931*^9, 3.762655614082803*^9}, {3.7626556552183027`*^9, 
   3.762655698662418*^9}, {3.7626934794717464`*^9, 3.762693481119744*^9}, {
   3.762698596224823*^9, 3.762698670708673*^9}, 3.762698731509883*^9, {
   3.762698803962064*^9, 3.7626988293306446`*^9}, {3.7626989117655735`*^9, 
   3.7626989226781473`*^9}, {3.7626989770541267`*^9, 
   3.7626989856841803`*^9}, {3.7627012765667286`*^9, 3.762701282143115*^9}, {
   3.762701342380327*^9, 3.7627013996639376`*^9}, {3.7627014335265427`*^9, 
   3.7627014787268543`*^9}, {3.762701520140205*^9, 3.7627015205464907`*^9}, 
   3.762705447697254*^9, {3.763244734230598*^9, 3.763244752346192*^9}, {
   3.7632581743553104`*^9, 3.763258194332582*^9}, 3.763258250591772*^9, {
   3.7632583209596252`*^9, 3.7632583221118402`*^9}, {3.7632583928084526`*^9, 
   3.763258432317236*^9}, {3.7632584861530666`*^9, 3.7632584941014137`*^9}, {
   3.763258529744892*^9, 3.7632585974307985`*^9}, {3.7632586299674473`*^9, 
   3.7632587176704226`*^9}, {3.763258748792323*^9, 3.7632587567034245`*^9}, 
   3.7632588440482454`*^9, {3.763258915841169*^9, 3.7632589276517076`*^9}, {
   3.7632599948956184`*^9, 3.76326003002724*^9}, {3.7632600790100517`*^9, 
   3.7632600884699802`*^9}, {3.7632601331088786`*^9, 3.763260172222765*^9}, {
   3.7632602193190007`*^9, 3.7632602947830043`*^9}, {3.7632603356109686`*^9, 
   3.763260415187608*^9}, {3.7632604643039217`*^9, 3.763260499452874*^9}, {
   3.7632605353592243`*^9, 3.763260613656707*^9}, {3.763260654079373*^9, 
   3.763260879127033*^9}, 3.763260913611108*^9, {3.7632609643826733`*^9, 
   3.7632609819202847`*^9}, {3.7632610190364723`*^9, 
   3.7632610368591347`*^9}, {3.7632610702265854`*^9, 
   3.7632611497663565`*^9}, {3.7632611969853115`*^9, 
   3.7632613455895243`*^9}, {3.7632613840294485`*^9, 
   3.7632615811200786`*^9}, {3.7632616357346354`*^9, 3.763261742912507*^9}, {
   3.7632618114223304`*^9, 3.763261926723977*^9}, {3.763262012933181*^9, 
   3.763262013992261*^9}, {3.763262044489561*^9, 3.76326204506758*^9}, {
   3.763262116152605*^9, 3.763262292757662*^9}, {3.763262325805498*^9, 
   3.7632623922926683`*^9}, {3.7632624231173573`*^9, 3.763262465462245*^9}, {
   3.7632625014202533`*^9, 3.76326251388682*^9}, {3.7632626669497223`*^9, 
   3.7632627243409295`*^9}, {3.763262815709516*^9, 3.7632629215628505`*^9}, 
   3.763262977337104*^9, {3.7632631079368973`*^9, 3.7632631081925097`*^9}, {
   3.7632632016770887`*^9, 3.7632632613605323`*^9}, {3.763263346026462*^9, 
   3.763263397850175*^9}, {3.7632634468033695`*^9, 3.7632634491557074`*^9}, {
   3.7632634862092376`*^9, 3.7632635209252844`*^9}, {3.7632635854629097`*^9, 
   3.763263587888767*^9}, {3.763264055623017*^9, 3.763264057520314*^9}, {
   3.7632640892033854`*^9, 3.7632641398688984`*^9}, 3.7632641853353186`*^9, {
   3.763264225563844*^9, 3.7632644841879444`*^9}, {3.76326458261981*^9, 
   3.763264847150422*^9}, 3.763264946337144*^9, {3.7632650524734516`*^9, 
   3.7632651688292885`*^9}, {3.763265206650627*^9, 3.7632652070605755`*^9}, {
   3.7632652370950994`*^9, 3.7632652965092573`*^9}, {3.7632653721819253`*^9, 
   3.763265393497857*^9}, {3.763265495012374*^9, 3.763265539987446*^9}, {
   3.763265683138357*^9, 3.7632658014509015`*^9}, {3.7632658950236187`*^9, 
   3.763265897346979*^9}, {3.763265936994251*^9, 3.7632660256691604`*^9}, 
   3.7632665234375668`*^9, {3.763266568841438*^9, 3.76326667276729*^9}, {
   3.763266707888018*^9, 3.763266714240859*^9}, {3.7632667631538506`*^9, 
   3.763266784832614*^9}, {3.763266820451153*^9, 3.7632668399334917`*^9}, {
   3.7633114787755327`*^9, 3.763311491857848*^9}, {3.7633115533073263`*^9, 
   3.763311642065763*^9}, {3.763311688026507*^9, 3.7633118792976933`*^9}, {
   3.7633119574651046`*^9, 3.763311961708699*^9}, {3.763312002807035*^9, 
   3.763312008146197*^9}, {3.763312107066289*^9, 3.763312108665326*^9}, {
   3.7633121543426247`*^9, 3.7633121774997025`*^9}, {3.7633123132208085`*^9, 
   3.7633123796147156`*^9}, {3.763312542111749*^9, 3.7633126151498327`*^9}, {
   3.7633126827522697`*^9, 3.7633127186507688`*^9}, {3.763312760542296*^9, 
   3.76331278810371*^9}, 3.763312822815153*^9, {3.7633128684220552`*^9, 
   3.76331294079317*^9}, {3.763312972751542*^9, 3.763313196261938*^9}, {
   3.763318308500495*^9, 3.7633184172790155`*^9}, {3.763318454727439*^9, 
   3.7633184795690575`*^9}, {3.7633185291191635`*^9, 
   3.7633185598154173`*^9}, {3.763318595075079*^9, 3.763318688553288*^9}, {
   3.7633187443306446`*^9, 3.763318762972345*^9}, 3.763323003619627*^9, {
   3.763323078580861*^9, 3.7633232959898324`*^9}, {3.763323334593171*^9, 
   3.7633234241179824`*^9}, {3.763323470124205*^9, 3.7633234717430296`*^9}, {
   3.7633235062468376`*^9, 3.7633235721163845`*^9}, 3.7633236059009295`*^9, {
   3.7633237678272195`*^9, 3.7633237692007966`*^9}, 3.7633238055696793`*^9, {
   3.763323848052415*^9, 3.763323987089448*^9}, {3.763324078917862*^9, 
   3.7633241057049427`*^9}, {3.76332414115007*^9, 3.7633241788791995`*^9}, 
   3.76332438567412*^9, {3.763324427867857*^9, 3.763324439990131*^9}, {
   3.7633244715810604`*^9, 3.763324569336935*^9}, {3.7633246063426943`*^9, 
   3.7633246114721746`*^9}, {3.7633246590215616`*^9, 
   3.7633247768126335`*^9}, {3.763324809827171*^9, 3.7633248923122826`*^9}, {
   3.7633249702053146`*^9, 3.7633250150719166`*^9}, {3.763325070729065*^9, 
   3.7633251469041595`*^9}, 3.763325358952749*^9, {3.76332538942076*^9, 
   3.763325551649897*^9}, {3.763325595361883*^9, 3.763325759587208*^9}, {
   3.7633258225952983`*^9, 3.763325956555542*^9}, {3.763326116940193*^9, 
   3.7633261234267864`*^9}, {3.763326219023765*^9, 3.763326223362852*^9}, {
   3.7633262656936607`*^9, 3.763326295779066*^9}, {3.76356178798265*^9, 
   3.76356192567375*^9}, {3.76356196977443*^9, 3.763562015599578*^9}, {
   3.763562061514203*^9, 3.763562087748957*^9}, {3.763562125070998*^9, 
   3.763562165334386*^9}, {3.7635622046127076`*^9, 3.76356227990858*^9}, {
   3.76356232072657*^9, 3.763562328092678*^9}, {3.763562471972331*^9, 
   3.7635624788967447`*^9}, {3.7635627092959104`*^9, 3.763562717782089*^9}, {
   3.7635627563905053`*^9, 3.7635627598018208`*^9}, {3.7635627956229353`*^9, 
   3.763562832617628*^9}, {3.7635689572125125`*^9, 3.763568961665244*^9}, {
   3.7635689921040354`*^9, 3.7635690213482704`*^9}, {3.76356931196206*^9, 
   3.7635693262550445`*^9}, {3.763569517089736*^9, 3.7635696418405805`*^9}, {
   3.7635697283167877`*^9, 3.7635697461908875`*^9}, {3.7635697862514286`*^9, 
   3.7635697938964605`*^9}, {3.763569851867762*^9, 3.763569981459463*^9}, {
   3.763570025575801*^9, 3.7635700438045287`*^9}, {3.7635702244181213`*^9, 
   3.7635702268027525`*^9}, {3.7635703342769337`*^9, 
   3.7635704352261343`*^9}, {3.763570524034799*^9, 3.7635705248641663`*^9}, {
   3.763570558243432*^9, 3.763570566409751*^9}, {3.7635705987016354`*^9, 
   3.763570676228245*^9}, {3.7635707502160606`*^9, 3.7635707527385836`*^9}, {
   3.7635707854880705`*^9, 3.7635707876822867`*^9}, {3.7635708200262575`*^9, 
   3.7635708253119516`*^9}, {3.763575689508105*^9, 3.7635757167921195`*^9}, {
   3.7635758690448904`*^9, 3.763575914820011*^9}, 3.7635759668813267`*^9, {
   3.763576022585419*^9, 3.7635760789005113`*^9}, {3.7635762460187173`*^9, 
   3.763576251230462*^9}, {3.7635763314304466`*^9, 3.763576343876134*^9}, {
   3.7635764654239426`*^9, 3.7635765176158953`*^9}, {3.763576659250139*^9, 
   3.7635767077042446`*^9}, {3.763576792357956*^9, 3.7635768529242115`*^9}, {
   3.763576907452589*^9, 3.7635769131453447`*^9}, {3.763576956304472*^9, 
   3.7635769719203253`*^9}, {3.763577152960684*^9, 3.7635771797732344`*^9}, {
   3.763577666843608*^9, 3.7635777141658936`*^9}, {3.763577895684903*^9, 
   3.7635780454688826`*^9}, 3.763578124420875*^9, {3.7635789162621365`*^9, 
   3.7635789859002275`*^9}, {3.7635790432191277`*^9, 3.763579057476848*^9}, {
   3.763579275606776*^9, 3.7635793032563353`*^9}, {3.7635795864288054`*^9, 
   3.763579746122672*^9}, {3.7635797793394794`*^9, 3.763579800629965*^9}, {
   3.763579882238236*^9, 3.763579889743476*^9}, 3.7635800591636*^9, {
   3.7635801719099536`*^9, 3.763580188601144*^9}, {3.76358029025426*^9, 
   3.7635803296017914`*^9}, {3.7635803864141927`*^9, 3.763580403112635*^9}, {
   3.7635804426088185`*^9, 3.7635804894347944`*^9}, {3.7635805689492745`*^9, 
   3.763580577055135*^9}, 3.763580617726554*^9, {3.7635807434816837`*^9, 
   3.7635807439254694`*^9}, {3.7635807968846054`*^9, 3.763580800770816*^9}, {
   3.7635809066287236`*^9, 3.7635809330013776`*^9}, {3.7635809633420787`*^9, 
   3.763580992685117*^9}, {3.7635810389253125`*^9, 3.7635810397775126`*^9}, {
   3.76358109457882*^9, 3.7635813086025677`*^9}, {3.7635813649708486`*^9, 
   3.7635813886749797`*^9}, {3.763581420023385*^9, 3.7635815150102177`*^9}, {
   3.7635815936840506`*^9, 3.7635815985029225`*^9}, {3.7635817967115483`*^9, 
   3.763581892348754*^9}, {3.763581927897236*^9, 3.7635819284596767`*^9}, {
   3.7635819655951385`*^9, 3.76358205835909*^9}, {3.763582091802004*^9, 
   3.763582155617432*^9}, {3.763582258514086*^9, 3.763582353723151*^9}, {
   3.7635823853482523`*^9, 3.763582389587899*^9}, {3.763582771305092*^9, 
   3.7635827722077227`*^9}, 3.7635829063510995`*^9, {3.7637325430631227`*^9, 
   3.7637325686607304`*^9}, {3.7637327680247555`*^9, 3.763732782321548*^9}, {
   3.763733525374922*^9, 3.7637335292315784`*^9}, {3.7637335719514227`*^9, 
   3.763733600848154*^9}, 3.7637349958837285`*^9, {3.763735041019102*^9, 
   3.7637350749294143`*^9}, {3.7637353334962263`*^9, 3.763735383106554*^9}, {
   3.763736884453292*^9, 3.7637370241075535`*^9}, {3.763737101122942*^9, 
   3.7637371472542768`*^9}, {3.763737177818061*^9, 3.7637372252478466`*^9}, {
   3.7637372566340437`*^9, 3.7637372837025547`*^9}, {3.7637411522728767`*^9, 
   3.763741281572954*^9}, {3.7637413611991034`*^9, 3.7637414390600934`*^9}, {
   3.7637414929388375`*^9, 3.7637415553390083`*^9}, {3.763741599911959*^9, 
   3.7637416566993456`*^9}, {3.7637417664908495`*^9, 
   3.7637417834714394`*^9}, {3.7637419679505224`*^9, 
   3.7637421514880905`*^9}, {3.763742203916238*^9, 3.763742205962234*^9}, {
   3.763742245375707*^9, 3.7637423045432053`*^9}, {3.7637428430529137`*^9, 
   3.7637428470137386`*^9}, {3.763743569961913*^9, 3.7637436023635244`*^9}, {
   3.7637436969619727`*^9, 3.763743808449025*^9}, {3.7637438530451055`*^9, 
   3.7637440839538064`*^9}, {3.7637442444713483`*^9, 3.763744250464239*^9}, {
   3.7637756890545416`*^9, 3.7637757467444344`*^9}, {3.7637757827548447`*^9, 
   3.763775787435777*^9}, 3.7637760985526266`*^9, {3.7637763257872553`*^9, 
   3.763776361951991*^9}, {3.7637764582606564`*^9, 3.763776468242544*^9}, {
   3.763776594548535*^9, 3.763776596635909*^9}, {3.763776950551773*^9, 
   3.763776966991815*^9}, {3.7637770692304897`*^9, 3.7637770863677607`*^9}, {
   3.763777143523634*^9, 3.7637771594745216`*^9}, {3.763777190401594*^9, 
   3.7637772003316293`*^9}, 3.763777278279752*^9, {3.7637773154216685`*^9, 
   3.7637773334552994`*^9}, {3.7637773710310135`*^9, 3.763777379983972*^9}, {
   3.763777652098072*^9, 3.7637776659242086`*^9}, {3.763778220441375*^9, 
   3.763778431688112*^9}, {3.7637784641493406`*^9, 3.763778482787264*^9}, {
   3.7637785265288672`*^9, 3.7637785677471704`*^9}, {3.7637785984176564`*^9, 
   3.7637786139368105`*^9}, {3.763778773361641*^9, 3.763778834926491*^9}, {
   3.7637788791772437`*^9, 3.763778897590519*^9}, {3.7637789343426676`*^9, 
   3.763779092976286*^9}, {3.76377912333294*^9, 3.7637794354668136`*^9}, {
   3.7637794687707253`*^9, 3.76377951357605*^9}, {3.7637795721633162`*^9, 
   3.7637795873875575`*^9}, {3.763809413930073*^9, 3.763809570779304*^9}, {
   3.763809611819826*^9, 3.7638096142106647`*^9}, {3.7638096761258125`*^9, 
   3.763809767589856*^9}, {3.7638098360486555`*^9, 3.763809840589405*^9}, {
   3.763809883727539*^9, 3.763810008855846*^9}, {3.7638101032323055`*^9, 
   3.7638101037442446`*^9}, {3.7638162810923033`*^9, 
   3.7638164158978767`*^9}, {3.7638164589221396`*^9, 
   3.7638165375120373`*^9}, {3.7638165942576275`*^9, 3.763816637581081*^9}, {
   3.7638166715932765`*^9, 3.7638166739069376`*^9}, {3.763816711945566*^9, 
   3.7638169150092125`*^9}, {3.7638169591289415`*^9, 3.763817014847916*^9}, {
   3.763817059801315*^9, 3.763817069324935*^9}, {3.7638171090009823`*^9, 
   3.7638171687839575`*^9}, {3.763817237243884*^9, 3.7638172934182243`*^9}, {
   3.763817344116167*^9, 3.76381742893011*^9}, {3.76381747146004*^9, 
   3.7638175026449623`*^9}, {3.763817539022448*^9, 3.763817569040333*^9}, {
   3.7638176053486233`*^9, 3.763817626506879*^9}, {3.7638176787344275`*^9, 
   3.7638177728525476`*^9}, {3.763817814307253*^9, 3.763817891602108*^9}, {
   3.7638179270355186`*^9, 3.7638179376083956`*^9}, {3.7638179863340254`*^9, 
   3.763818059438744*^9}, {3.763818108542101*^9, 3.7638181135817537`*^9}, {
   3.763818149267033*^9, 3.7638181610975313`*^9}, {3.763818192229903*^9, 
   3.7638182277795367`*^9}, {3.7638182603433084`*^9, 
   3.7638182711725225`*^9}, {3.763819212690658*^9, 3.763819313332613*^9}, 
   3.7638193517080536`*^9, {3.7638194280979548`*^9, 3.763819430187211*^9}, {
   3.763819491036569*^9, 3.763819547169694*^9}, {3.7638195857256093`*^9, 
   3.7638196041563115`*^9}, {3.7638196609136057`*^9, 
   3.7638196822605114`*^9}, {3.763819716791226*^9, 3.7638197736422567`*^9}, {
   3.7638218872338133`*^9, 3.7638219002764626`*^9}, {3.7638219404122887`*^9, 
   3.763821964290963*^9}, {3.763822030961088*^9, 3.7638220592796197`*^9}, 
   3.7638221100447874`*^9, {3.7638221508455725`*^9, 3.7638221579155645`*^9}, {
   3.7638228213123703`*^9, 3.763822975725724*^9}, {3.763823012384609*^9, 
   3.763823021163369*^9}, {3.7638230769850335`*^9, 3.7638230782938557`*^9}, {
   3.7638231198850994`*^9, 3.7638232030261326`*^9}, {3.763823300529372*^9, 
   3.763823306099082*^9}, {3.7638233481662235`*^9, 3.7638233544980555`*^9}, {
   3.763823386550608*^9, 3.763823416047123*^9}, {3.763823452529748*^9, 
   3.763823479315694*^9}, {3.76382386691702*^9, 3.7638238984267387`*^9}, {
   3.7638239893047876`*^9, 3.7638240237447166`*^9}, {3.763824082323162*^9, 
   3.7638245370468082`*^9}, {3.7638246013708305`*^9, 
   3.7638246455796165`*^9}, {3.763824676166874*^9, 3.763824679282549*^9}, 
   3.763824746333269*^9, {3.7638247863572683`*^9, 3.7638247865996227`*^9}, {
   3.763824832972696*^9, 3.7638248346701546`*^9}, {3.763824869393284*^9, 
   3.7638248974802303`*^9}, {3.7638251221974897`*^9, 3.763825152029743*^9}, 
   3.763825207075554*^9, 3.763825470470437*^9, {3.763915982318616*^9, 
   3.7639159998128495`*^9}, {3.763916070756193*^9, 3.7639161003111863`*^9}, {
   3.763916193887024*^9, 3.7639162118280635`*^9}, {3.7639162488371243`*^9, 
   3.763916253698129*^9}, {3.7639163209692907`*^9, 3.7639163558001785`*^9}, 
   3.7639164213290377`*^9, {3.763916481889105*^9, 3.763916506407553*^9}, 
   3.763916569831999*^9, {3.763916671540099*^9, 3.763916701696484*^9}, {
   3.76391674677896*^9, 3.7639167823349075`*^9}, {3.763916830208956*^9, 
   3.7639168515648623`*^9}, {3.763916934243805*^9, 3.763916982923668*^9}, {
   3.7639171342471275`*^9, 3.7639171507829256`*^9}, {3.7639172048404093`*^9, 
   3.7639172113041325`*^9}, {3.763917287108526*^9, 3.7639173555435314`*^9}, {
   3.763917388679976*^9, 3.7639173956443324`*^9}, {3.76391744614333*^9, 
   3.763917457767257*^9}, {3.763917521299411*^9, 3.763917526676041*^9}, 
   3.7639179181907825`*^9, {3.763919890100129*^9, 3.7639199474494267`*^9}, {
   3.763920007257474*^9, 3.7639202653062377`*^9}, {3.7639203827185535`*^9, 
   3.7639203838343163`*^9}, {3.7639204496053443`*^9, 
   3.7639204771871605`*^9}, {3.763920620544056*^9, 3.7639206225000343`*^9}, {
   3.7639207145810947`*^9, 3.7639207171386757`*^9}, {3.763920936197978*^9, 
   3.763920948162108*^9}, {3.7639217852264795`*^9, 3.7639217859088106`*^9}, {
   3.764120686225143*^9, 3.7641207010526266`*^9}, {3.764120760214418*^9, 
   3.764120768133875*^9}, {3.76412082813645*^9, 3.7641208790675974`*^9}, {
   3.764120916739645*^9, 3.7641209178602967`*^9}, {3.7641209791358805`*^9, 
   3.764121016706419*^9}, {3.764121079921096*^9, 3.7641212328621473`*^9}, {
   3.7641212678352647`*^9, 3.764121331304447*^9}, {3.7641226804590907`*^9, 
   3.764122800235978*^9}, {3.7641228408033333`*^9, 3.764122862332555*^9}, {
   3.7641229392824125`*^9, 3.764123010847362*^9}, {3.7641230440670123`*^9, 
   3.764123118315817*^9}, {3.7641231693751845`*^9, 3.764123170199586*^9}, {
   3.7641238491994925`*^9, 3.764123996881447*^9}, {3.764124114969412*^9, 
   3.764124142984704*^9}, {3.7641241919177494`*^9, 3.7641242088041315`*^9}, {
   3.7641242986747065`*^9, 3.7641243477492113`*^9}, {3.764124835495285*^9, 
   3.764124891229147*^9}, {3.7641251717489624`*^9, 3.764125177216017*^9}, {
   3.764125207294031*^9, 3.7641252651474657`*^9}, {3.7641252996359887`*^9, 
   3.7641253391508303`*^9}, {3.7641253902169466`*^9, 3.764125476322506*^9}, {
   3.7641255135317783`*^9, 3.764125514252411*^9}, {3.764125599512794*^9, 
   3.7641256106404953`*^9}, {3.764125641465163*^9, 3.7641256438380766`*^9}, 
   3.7641256802357836`*^9, {3.76412574335146*^9, 3.764125760025778*^9}, {
   3.764125799129299*^9, 3.7641258033957314`*^9}, {3.764125870517253*^9, 
   3.764125936516927*^9}, {3.764125973597728*^9, 3.764126042545843*^9}, {
   3.7641260945793257`*^9, 3.764126313320656*^9}, {3.7641263768240356`*^9, 
   3.76412638764606*^9}, {3.7641264274163747`*^9, 3.7641264333726482`*^9}, {
   3.764126479620138*^9, 3.764126504807542*^9}, {3.764126567254727*^9, 
   3.7641265791382294`*^9}, {3.7641266568719497`*^9, 
   3.7641266606762457`*^9}, {3.7641661757923126`*^9, 3.764166194746554*^9}, {
   3.7641662261374564`*^9, 3.7641662384404473`*^9}, 3.764166360734127*^9, {
   3.764166419264695*^9, 3.764166420269273*^9}, {3.7641664652665453`*^9, 
   3.7641664873368387`*^9}, 3.7641665812575293`*^9, {3.7641666534491467`*^9, 
   3.764166657516969*^9}, {3.7641667415933523`*^9, 3.764166772512603*^9}, {
   3.764166828311082*^9, 3.764166847103791*^9}, {3.764166890584447*^9, 
   3.7641670186539783`*^9}, {3.7641670593884654`*^9, 3.764167060260109*^9}, {
   3.7641801429277534`*^9, 3.764180474798021*^9}, {3.764180579171138*^9, 
   3.764180651812046*^9}, {3.7641807224223824`*^9, 3.764181069421261*^9}, {
   3.764181099804076*^9, 3.764181377238017*^9}, {3.76418144349664*^9, 
   3.764181514963997*^9}, {3.764181572762561*^9, 3.764181697640894*^9}, 
   3.764181948539859*^9, {3.764182003729395*^9, 3.764182085097986*^9}, 
   3.7641821384896903`*^9, {3.7641821855948286`*^9, 3.7641822363721848`*^9}, {
   3.7641822689251747`*^9, 3.7641822766654935`*^9}, {3.7641830561952353`*^9, 
   3.764183115397052*^9}, {3.7641831897803*^9, 3.7641832598919992`*^9}, {
   3.764183299507121*^9, 3.7641833053136063`*^9}, {3.76429679658639*^9, 
   3.7642967982739763`*^9}, {3.764296843937127*^9, 3.7642968853938227`*^9}, {
   3.764296948671544*^9, 3.7642970125276284`*^9}, {3.764297043877421*^9, 
   3.7642970562451887`*^9}, {3.7642971526714983`*^9, 
   3.7642971587560816`*^9}, {3.7642972111675053`*^9, 3.764297241999214*^9}, {
   3.764297372076334*^9, 3.764297383043042*^9}, {3.7642974800173807`*^9, 
   3.7642975511192617`*^9}, {3.764297608100845*^9, 3.7642976584781017`*^9}, {
   3.7642976981220007`*^9, 3.764297930224848*^9}, {3.7642979912947235`*^9, 
   3.764298081889628*^9}, {3.764298125117668*^9, 3.7642981305314646`*^9}, {
   3.7642981609840217`*^9, 3.7642982804163203`*^9}, {3.764298504117818*^9, 
   3.7642985823516674`*^9}, {3.764298621941784*^9, 3.7642986243427753`*^9}, {
   3.764298704536669*^9, 3.764298805794608*^9}, {3.7642988465961046`*^9, 
   3.764298877619446*^9}, {3.764299368214337*^9, 3.7642994373959627`*^9}, 
   3.764299469247279*^9, {3.764299512676605*^9, 3.7642995209513817`*^9}, {
   3.7642996238917894`*^9, 3.764299671223945*^9}, {3.7642997187902255`*^9, 
   3.764299761577944*^9}, {3.764299826304947*^9, 3.7642998271934543`*^9}, {
   3.7643019953146114`*^9, 3.764302045442119*^9}, {3.764302122556258*^9, 
   3.764302164265481*^9}, {3.7643021974412136`*^9, 3.7643022330377007`*^9}, 
   3.7643024135688295`*^9, {3.7643843207728767`*^9, 3.7643843224124966`*^9}, {
   3.764384391130884*^9, 3.764384497067466*^9}, {3.7643845353890734`*^9, 
   3.7643845717888155`*^9}, {3.76438460740166*^9, 3.764384626952422*^9}, {
   3.764384698636885*^9, 3.7643847459873734`*^9}, {3.764384837971592*^9, 
   3.7643848671366653`*^9}, {3.7643849433819413`*^9, 
   3.7643849659885387`*^9}, {3.7643850179167895`*^9, 3.7643850559072814`*^9}, 
   3.764385089023796*^9, 3.7643851191692486`*^9, {3.7643851565653296`*^9, 
   3.7643851607491813`*^9}, {3.7643852002705517`*^9, 3.764385202265222*^9}, {
   3.764385242251382*^9, 3.7643852705467787`*^9}, {3.7643855045375705`*^9, 
   3.764385506407608*^9}, {3.7643855373509398`*^9, 3.7643855572018538`*^9}, {
   3.764385596743202*^9, 3.7643855977175994`*^9}, {3.7643856363314247`*^9, 
   3.764385640049489*^9}, {3.764385704823419*^9, 3.764385745503722*^9}, {
   3.7643857875344205`*^9, 3.764385788123845*^9}, {3.764385904285467*^9, 
   3.7643859097658253`*^9}, {3.764385968359268*^9, 3.7643860585423346`*^9}, {
   3.7643861462868547`*^9, 3.7643862317903967`*^9}, {3.764386275954393*^9, 
   3.764386358659441*^9}, {3.7643864566366215`*^9, 3.7643864869775534`*^9}, {
   3.7643865193749895`*^9, 3.764386562864787*^9}, {3.764386599679451*^9, 
   3.7643866057980704`*^9}, 3.7643866563559823`*^9, {3.7643867326351705`*^9, 
   3.7643867332654867`*^9}, {3.7644238957465353`*^9, 3.764423896586539*^9}, {
   3.764424125331387*^9, 3.7644242092215347`*^9}, {3.764424241104243*^9, 
   3.7644242790152426`*^9}, {3.7644243135632544`*^9, 3.7644243446022778`*^9}, 
   3.7644250790849724`*^9, 3.7644251245100455`*^9, {3.764425173901293*^9, 
   3.7644251794523563`*^9}, {3.76442531608424*^9, 3.7644254905103674`*^9}, {
   3.7644257277506313`*^9, 3.7644257526560135`*^9}, {3.7644258670816007`*^9, 
   3.7644258731509123`*^9}, {3.764425974290193*^9, 3.7644259888704653`*^9}, {
   3.7644260704207478`*^9, 3.7644260759750395`*^9}, 3.7645083053389344`*^9, {
   3.7645083362177963`*^9, 3.7645083605819745`*^9}, {3.7645084471924076`*^9, 
   3.7645084625224376`*^9}, {3.764508687016855*^9, 3.764508810606824*^9}, {
   3.764508854193931*^9, 3.7645089642071443`*^9}, {3.764509013875512*^9, 
   3.764509016902831*^9}, {3.76450908282837*^9, 3.7645090854145136`*^9}, {
   3.7645097009873075`*^9, 3.764509752600852*^9}, {3.7645098113970833`*^9, 
   3.76450981957098*^9}, {3.7645104940608397`*^9, 3.764510542165*^9}, {
   3.764510577053564*^9, 3.764510583700255*^9}, {3.7645106375184946`*^9, 
   3.7645107153784275`*^9}, {3.764510956451783*^9, 3.764511008435589*^9}, {
   3.76451135174655*^9, 3.764511366558383*^9}, {3.7645114075986724`*^9, 
   3.7645114153435125`*^9}, {3.7645114578705816`*^9, 
   3.7645114606026535`*^9}, {3.7645115091269336`*^9, 3.764511517823985*^9}, {
   3.764511552828493*^9, 3.764511577656604*^9}, {3.7645116081156096`*^9, 
   3.764511644257532*^9}, {3.764511707129408*^9, 3.7645117107375574`*^9}, {
   3.764511751080491*^9, 3.764511855030365*^9}, {3.7645119083916674`*^9, 
   3.764511915380028*^9}, {3.764511961747259*^9, 3.7645119710054426`*^9}, {
   3.764512058062229*^9, 3.764512078474121*^9}, {3.7645121299810443`*^9, 
   3.764512138174633*^9}, {3.764512190600692*^9, 3.7645123317353*^9}, {
   3.764512381328726*^9, 3.764512485035556*^9}, {3.764512534470461*^9, 
   3.7645126931136665`*^9}, {3.764512735689704*^9, 3.7645127781469617`*^9}, {
   3.7645186825019064`*^9, 3.7645186977122974`*^9}, {3.764518869052491*^9, 
   3.764518881453323*^9}, {3.764518925362031*^9, 3.764519008238593*^9}, {
   3.764519041282293*^9, 3.7645190414608226`*^9}, {3.7645191203939342`*^9, 
   3.7645192439567857`*^9}, {3.7645193213898706`*^9, 3.7645193413405633`*^9}, 
   3.7645194235907645`*^9, {3.764519456126877*^9, 3.764519539859136*^9}, 
   3.764519589706947*^9, 3.764519620164565*^9, {3.7645196869630814`*^9, 
   3.764519719875142*^9}, {3.7645197546372743`*^9, 3.7645197690806684`*^9}, {
   3.7645198213221025`*^9, 3.764519935447811*^9}, {3.764520206530819*^9, 
   3.7645202322770276`*^9}, {3.764520267263529*^9, 3.764520318255282*^9}, {
   3.7645206770934887`*^9, 3.7645207409516563`*^9}, {3.7645208407779255`*^9, 
   3.764520962476754*^9}, {3.7645209928745527`*^9, 3.7645212990364885`*^9}, {
   3.764521336971155*^9, 3.7645213658719215`*^9}, {3.7645214028471413`*^9, 
   3.764521433471306*^9}, {3.7645214903110533`*^9, 3.76452150958457*^9}, {
   3.764521576160634*^9, 3.7645215907975574`*^9}, {3.764521686709287*^9, 
   3.7645216870064926`*^9}, {3.7645217682404437`*^9, 
   3.7645217709492025`*^9}, {3.7645220880998106`*^9, 
   3.7645221074012413`*^9}, {3.764522175107318*^9, 3.7645222096520367`*^9}, {
   3.7645222430418053`*^9, 3.764522272999772*^9}, {3.7645223178947678`*^9, 
   3.7645223425409465`*^9}, 3.7645223954176793`*^9, {3.7645224918889155`*^9, 
   3.764522579716228*^9}, {3.764524171350359*^9, 3.7645241896463943`*^9}, {
   3.7645242733020554`*^9, 3.764524292023192*^9}, 3.7645243498655424`*^9, {
   3.7645245178842015`*^9, 3.7645245219290867`*^9}, {3.764526432108115*^9, 
   3.764526466882805*^9}, {3.7645265215688906`*^9, 3.7645265853536263`*^9}, {
   3.764526706863765*^9, 3.7645267074051247`*^9}, {3.7645269266369905`*^9, 
   3.7645269767350454`*^9}, {3.7645270587776995`*^9, 
   3.7645271166195073`*^9}, {3.7645272681051083`*^9, 3.76452727416384*^9}, {
   3.764527374537689*^9, 3.76452742247283*^9}, {3.764527602651577*^9, 
   3.7645276031772146`*^9}, {3.764528058427865*^9, 3.7645281334185486`*^9}, {
   3.764528691700125*^9, 3.764528781180045*^9}, {3.764528824387577*^9, 
   3.764528833445904*^9}, {3.7645289224748898`*^9, 3.7645289383264303`*^9}, {
   3.764528968615309*^9, 3.7645289726286592`*^9}, {3.764529016112504*^9, 
   3.7645290910898333`*^9}, {3.7645293396688013`*^9, 
   3.7645293653733697`*^9}, {3.764529719587241*^9, 3.764529747649502*^9}, {
   3.7645297845930147`*^9, 3.764529884700708*^9}, {3.764529930654585*^9, 
   3.7645299833687077`*^9}, {3.7645300144120865`*^9, 
   3.7645301680784903`*^9}, {3.7645302001251245`*^9, 3.764530203492443*^9}, {
   3.7645302801215343`*^9, 3.7645303305748243`*^9}, 3.7645305101989665`*^9, {
   3.7645306390879097`*^9, 3.7645306668082676`*^9}, {3.764530745611931*^9, 
   3.7645307801161513`*^9}, {3.7645309296547747`*^9, 
   3.7645309717320414`*^9}, {3.7645311969459114`*^9, 3.764531197445386*^9}, 
   3.7645313509180946`*^9, {3.764531423117526*^9, 3.7645314320421057`*^9}, {
   3.764531509632058*^9, 3.7645315126454763`*^9}, {3.7645393206119714`*^9, 
   3.764539338266071*^9}, {3.7645394137118225`*^9, 3.7645394421995635`*^9}, {
   3.764539474586903*^9, 3.76453955017982*^9}, {3.764539633047068*^9, 
   3.7645396406425695`*^9}, {3.7645396812126665`*^9, 
   3.7645396821276236`*^9}, {3.7645397444570055`*^9, 3.764539751631432*^9}, {
   3.7645398618324175`*^9, 3.7645399275834827`*^9}, {3.7645399884612904`*^9, 
   3.7645399946336584`*^9}, {3.764540179232525*^9, 3.7645401872250113`*^9}, 
   3.764540386838043*^9, {3.764540445273261*^9, 3.76454044569214*^9}, {
   3.76454054840893*^9, 3.764540548968995*^9}, {3.764540705676992*^9, 
   3.764540728929406*^9}, {3.764540772084962*^9, 3.7645407724649534`*^9}, {
   3.7645408160503454`*^9, 3.764540863790041*^9}, {3.764540897865049*^9, 
   3.764540933967813*^9}, {3.7645409730365286`*^9, 3.7645410180235915`*^9}, {
   3.7645413276890273`*^9, 3.7645413299802103`*^9}, {3.764541418261321*^9, 
   3.7645414184887996`*^9}, {3.7645417915871944`*^9, 3.764541804401883*^9}, {
   3.76454186374613*^9, 3.7645418751851873`*^9}, {3.7646115774633613`*^9, 
   3.764611599793649*^9}, {3.76461177724255*^9, 3.764611782172394*^9}, {
   3.764683451373802*^9, 3.764683456209888*^9}, 3.7646834965161877`*^9, {
   3.7646835296606083`*^9, 3.764683533677887*^9}, {3.764683580790007*^9, 
   3.7646836109154806`*^9}, {3.7646836932624965`*^9, 
   3.7646836952651443`*^9}, {3.764683927446763*^9, 3.764683928479004*^9}, {
   3.764684727294606*^9, 3.76468477966868*^9}, {3.7646851803540726`*^9, 
   3.76468524487368*^9}, {3.7646854755233884`*^9, 3.7646855021013927`*^9}, {
   3.76468558134864*^9, 3.76468560401309*^9}, {3.7646860379056425`*^9, 
   3.7646862217613587`*^9}, {3.7646862665586615`*^9, 3.764686330224594*^9}, {
   3.764686380768544*^9, 3.7646864854119473`*^9}, {3.7646872791436987`*^9, 
   3.764687364285231*^9}, {3.7646874811649284`*^9, 3.7646874860129747`*^9}, {
   3.764687519289068*^9, 3.764687589679942*^9}, {3.764687693511554*^9, 
   3.7646877420618296`*^9}, {3.764687780852004*^9, 3.764687817042935*^9}, {
   3.764687852416458*^9, 3.764687857429073*^9}, {3.764687997544691*^9, 
   3.7646880834621263`*^9}, {3.764688139366746*^9, 3.7646882169715614`*^9}, {
   3.764688260593974*^9, 3.7646882623872337`*^9}, {3.7646883044617615`*^9, 
   3.764688346604206*^9}, {3.7646889175360384`*^9, 3.764688921368787*^9}, {
   3.7646889813405123`*^9, 3.764689027851287*^9}, {3.7646890736997814`*^9, 
   3.7646890834367723`*^9}, {3.7646891243863506`*^9, 3.764689197773265*^9}, {
   3.7646892404003696`*^9, 3.7646892884439945`*^9}, {3.764689318508671*^9, 
   3.764689412438356*^9}, {3.764689589655798*^9, 3.7646896828747745`*^9}, {
   3.7646898104850326`*^9, 3.7646899208636537`*^9}, {3.7646900218524466`*^9, 
   3.7646900795318613`*^9}, {3.76469016413453*^9, 3.7646902273712635`*^9}, {
   3.764690259724371*^9, 3.764690284301957*^9}, {3.7646971402590017`*^9, 
   3.7646971568104305`*^9}, {3.7646974232934165`*^9, 
   3.7646974305599937`*^9}, {3.764697462359346*^9, 3.764697477084612*^9}, {
   3.7646978209206653`*^9, 3.7646979654685183`*^9}, {3.7646980061571183`*^9, 
   3.7646980102213507`*^9}, {3.764698043647501*^9, 3.764698079183972*^9}, {
   3.7646981513782396`*^9, 3.7646981841314754`*^9}, {3.764698258671256*^9, 
   3.764698291096553*^9}, {3.7646983275184984`*^9, 3.7646983713372602`*^9}, {
   3.7646984236707706`*^9, 3.7646984775754585`*^9}, {3.7646985695614276`*^9, 
   3.764698569999549*^9}, {3.7648024968498936`*^9, 3.764802591303876*^9}, {
   3.764802743012479*^9, 3.764802766291913*^9}, {3.7648078043601837`*^9, 
   3.7648078547926598`*^9}, {3.764807915871167*^9, 3.7648079179522953`*^9}, {
   3.7648082846154766`*^9, 3.764808286224447*^9}, {3.7649628320423393`*^9, 
   3.764962845408717*^9}, {3.7649628775855913`*^9, 3.764962923712894*^9}, {
   3.764963052480332*^9, 3.7649631266938887`*^9}, {3.7649632011804175`*^9, 
   3.7649632137929344`*^9}, {3.7649632743884315`*^9, 
   3.7649632746737823`*^9}, {3.7649643106945324`*^9, 3.7649644088978434`*^9}, 
   3.7649644488230605`*^9, {3.7649644794382334`*^9, 3.7649645798830223`*^9}, {
   3.7649646181971107`*^9, 3.764964677240036*^9}, {3.764964901658048*^9, 
   3.7649649018197284`*^9}, {3.764964945729559*^9, 3.7649650367094364`*^9}, {
   3.764965146076676*^9, 3.764965146376117*^9}, {3.7649675696687446`*^9, 
   3.764967570820369*^9}, 3.7649688366828012`*^9, {3.7649693803109827`*^9, 
   3.764969410417303*^9}, 3.7649695665009627`*^9, {3.7649908835338306`*^9, 
   3.7649908841179857`*^9}, {3.7649909648791857`*^9, 3.7649910014756355`*^9}, 
   3.764991037563741*^9, {3.764991343137803*^9, 3.764991360779933*^9}, {
   3.76513225603379*^9, 3.7651322665129204`*^9}, {3.765132305257513*^9, 
   3.7651324221958237`*^9}, {3.7651324612831125`*^9, 
   3.7651324665720897`*^9}, {3.7651325013011937`*^9, 3.765132574740667*^9}, {
   3.7651326126750174`*^9, 3.76513262081625*^9}, 3.7653913524993043`*^9, {
   3.7653913826632357`*^9, 3.7653913991032033`*^9}, {3.765391441012292*^9, 
   3.765391447269471*^9}, {3.765391489429761*^9, 3.765391498785717*^9}, {
   3.7653916277966185`*^9, 3.76539165012912*^9}, {3.765391690571989*^9, 
   3.765391696217807*^9}, {3.765391734605198*^9, 3.765391740778167*^9}, {
   3.765391782012888*^9, 3.7653917834459944`*^9}, {3.765391866497471*^9, 
   3.765391869589691*^9}, {3.76539206093017*^9, 3.7653920623348827`*^9}, {
   3.7653921987611685`*^9, 3.7653922073864946`*^9}, {3.765392267990178*^9, 
   3.765392269551629*^9}, {3.765392327280985*^9, 3.7653923848704147`*^9}, {
   3.765392419362232*^9, 3.765392422425831*^9}, {3.7653925576635046`*^9, 
   3.765392624130087*^9}, {3.7653926794249372`*^9, 3.7653927210975647`*^9}, {
   3.7653928848871317`*^9, 3.765392926488304*^9}, {3.765393104890311*^9, 
   3.7653931169681225`*^9}, {3.7653931935423155`*^9, 3.765393214848441*^9}, {
   3.765393260800116*^9, 3.765393263859072*^9}, {3.7653932985365744`*^9, 
   3.765393305119443*^9}, {3.765394422490343*^9, 3.765394488298842*^9}, {
   3.7653945277422285`*^9, 3.765394664546831*^9}, {3.76539473604932*^9, 
   3.765394747274823*^9}, {3.7653947821388636`*^9, 3.7653948014615245`*^9}, {
   3.7653956933984194`*^9, 3.7653957744302936`*^9}, {3.7653958221781554`*^9, 
   3.765395836544154*^9}, {3.7653960164333677`*^9, 3.765396051058527*^9}, {
   3.76539616840642*^9, 3.7653961903556085`*^9}, {3.7653962240284557`*^9, 
   3.7653962549923515`*^9}, 3.765396294323374*^9, {3.765396581105547*^9, 
   3.7653965961772337`*^9}, {3.765396653407352*^9, 3.7653966537953157`*^9}, 
   3.765396763499194*^9, 3.7653968913146763`*^9, {3.7653970385304675`*^9, 
   3.765397329529527*^9}, {3.7653974926417823`*^9, 3.765397494636453*^9}, {
   3.765397950385014*^9, 3.765397953285254*^9}, {3.7653980049312615`*^9, 
   3.765398082755334*^9}, {3.765398168269845*^9, 3.765398225685419*^9}, {
   3.7653982578863983`*^9, 3.7653983432742276`*^9}, {3.765398392034941*^9, 
   3.7653984355656424`*^9}, {3.7653984823147397`*^9, 
   3.7653984932295265`*^9}, {3.765398597124956*^9, 3.765398770034956*^9}, {
   3.765398877691268*^9, 3.765398897364703*^9}, {3.7653992929078665`*^9, 
   3.7653992962629137`*^9}, {3.765399338101121*^9, 3.7653993504660745`*^9}, {
   3.765399457743451*^9, 3.7653995801314263`*^9}, {3.765399639247473*^9, 
   3.765399695837267*^9}, {3.7653997577987065`*^9, 3.7653997578685236`*^9}, {
   3.7653998828176775`*^9, 3.765399893172964*^9}, {3.765400007924387*^9, 
   3.765400014792037*^9}, {3.7654001083959465`*^9, 3.765400115623644*^9}, {
   3.7654003756109524`*^9, 3.7654003849539948`*^9}, {3.7654004294540863`*^9, 
   3.765400429731367*^9}, {3.7654004842018037`*^9, 3.76540050033372*^9}, 
   3.7654005481409645`*^9, {3.7654006376527925`*^9, 3.7654006586955876`*^9}, {
   3.765400716920012*^9, 3.7654007358215075`*^9}, {3.7654007666321707`*^9, 
   3.7654007943231907`*^9}, {3.765400845148389*^9, 3.765400871605686*^9}, {
   3.765400974820901*^9, 3.7654009836024523`*^9}, 3.7654011008780875`*^9, {
   3.7654011735379415`*^9, 3.765401190290187*^9}, 3.7654013016031785`*^9, 
   3.765401336330119*^9, {3.765406375622855*^9, 3.7654063857668304`*^9}, {
   3.765406487320388*^9, 3.7654065021410522`*^9}, {3.765406688328025*^9, 
   3.76540671380336*^9}, {3.7654068967869196`*^9, 3.765406914343772*^9}, {
   3.7654069860613823`*^9, 3.7654069868019648`*^9}, {3.7654070222094717`*^9, 
   3.765407026524728*^9}, {3.76540706509927*^9, 3.765407091534191*^9}, {
   3.765407200398785*^9, 3.765407274159797*^9}, 3.7654073257741127`*^9, {
   3.765408253971715*^9, 3.7654082662432785`*^9}, {3.765408301058504*^9, 
   3.765408301312598*^9}, 3.7654083403975573`*^9, {3.7654085056046157`*^9, 
   3.7654085227126904`*^9}, {3.765408664806966*^9, 3.7654086682580013`*^9}, {
   3.7654091451410303`*^9, 3.765409248747094*^9}, {3.765409331723545*^9, 
   3.765409361589677*^9}, {3.765409415211335*^9, 3.7654094362224684`*^9}, {
   3.765409490972816*^9, 3.7654095204656954`*^9}, {3.765409592214979*^9, 
   3.7654095959291267`*^9}, {3.765409649827287*^9, 3.7654096946673217`*^9}, {
   3.765411019247651*^9, 3.765411032124976*^9}, {3.765411086062583*^9, 
   3.765411197913931*^9}, {3.765411248789312*^9, 3.765411257360464*^9}, {
   3.7654112909471006`*^9, 3.765411305020662*^9}, {3.765411387460207*^9, 
   3.7654113902047367`*^9}, {3.7654114393260975`*^9, 
   3.7654115001105394`*^9}, {3.765411598330408*^9, 3.7654117083570595`*^9}, {
   3.765411785695997*^9, 3.7654117921219797`*^9}, {3.7654118224027433`*^9, 
   3.765411891140978*^9}, {3.765412294986839*^9, 3.76541229521698*^9}, {
   3.7654131379085956`*^9, 3.765413205531502*^9}, {3.7654134868936195`*^9, 
   3.765413494336252*^9}, {3.7654136225487733`*^9, 3.765413678348157*^9}, {
   3.7654138962235384`*^9, 3.7654139273970256`*^9}, {3.765413960822785*^9, 
   3.765413963269808*^9}, {3.765414165134917*^9, 3.765414176582913*^9}, {
   3.765414295110916*^9, 3.7654143661885495`*^9}, {3.7654144770762234`*^9, 
   3.765414477603371*^9}, {3.7654145099718075`*^9, 3.7654145505103016`*^9}, {
   3.7654145845443697`*^9, 3.765414709925541*^9}, {3.765415745651478*^9, 
   3.765415754591776*^9}, 3.7654158047426863`*^9, 3.765416098720047*^9, 
   3.7654163888887625`*^9, {3.765416473606238*^9, 3.765416512913107*^9}, {
   3.7654168194874163`*^9, 3.7654168302747326`*^9}, {3.7654170367119417`*^9, 
   3.765417064102661*^9}, {3.765417108758079*^9, 3.76541715369317*^9}, {
   3.765417560209632*^9, 3.7654175607011347`*^9}, {3.765417632654354*^9, 
   3.7654176420409737`*^9}, {3.765417695567815*^9, 3.7654176999671755`*^9}, {
   3.7654177378341255`*^9, 3.7654177425082507`*^9}, 3.76541780812486*^9, {
   3.765417845599369*^9, 3.7654178787911377`*^9}, {3.765417916490897*^9, 
   3.7654179386284175`*^9}, {3.7654180334899063`*^9, 3.765418072404933*^9}, {
   3.7654181819633784`*^9, 3.7654181834866424`*^9}, {3.7654182457148504`*^9, 
   3.7654182534846644`*^9}, {3.7654184222439604`*^9, 3.765418423351482*^9}, {
   3.765418482974743*^9, 3.765418520797052*^9}, {3.7654186417569675`*^9, 
   3.7654186770963173`*^9}, {3.7654187122304554`*^9, 
   3.7654187749749837`*^9}, {3.7654188160174055`*^9, 
   3.7654188354443016`*^9}, {3.765418951172777*^9, 3.765418951474987*^9}, {
   3.7654190320513225`*^9, 3.765419032383444*^9}, {3.7654190960054493`*^9, 
   3.765419164455534*^9}, {3.7654191945700703`*^9, 3.7654192091770115`*^9}, {
   3.7654192399358606`*^9, 3.7654192432978735`*^9}, {3.765419304911251*^9, 
   3.7654193317136345`*^9}, {3.7654193734660707`*^9, 
   3.7654194031138535`*^9}, {3.765419452405121*^9, 3.7654195228010597`*^9}, {
   3.7654196341681643`*^9, 3.76541963508671*^9}, {3.7654196940411577`*^9, 
   3.7654197171873517`*^9}, 3.7654198763730097`*^9, {3.7654199370309315`*^9, 
   3.7654199566275854`*^9}, {3.7654200217385674`*^9, 3.765420175881739*^9}, {
   3.7654202300121083`*^9, 3.7654202598384123`*^9}, {3.7654213985955167`*^9, 
   3.765421426660527*^9}, 3.76542147055325*^9, {3.7654215280975075`*^9, 
   3.7654215625155478`*^9}, {3.765421595564107*^9, 3.765421599602702*^9}, {
   3.765423646339314*^9, 3.7654237411356134`*^9}, 3.7654237747882333`*^9, {
   3.7654241035798955`*^9, 3.765424121436704*^9}, 3.765424323109222*^9, {
   3.7654243929647975`*^9, 3.7654243960118427`*^9}, {3.7654245054234214`*^9, 
   3.765424526066563*^9}, 3.765424563525468*^9, {3.765424975981139*^9, 
   3.765425007415444*^9}, {3.7654250573906336`*^9, 3.76542507772379*^9}, {
   3.7654253151022863`*^9, 3.7654253276271763`*^9}, {3.765713798544278*^9, 
   3.765713849622815*^9}, {3.765713971040987*^9, 3.765713976358781*^9}, {
   3.765714018863218*^9, 3.76571405208545*^9}, 3.765714083500498*^9, {
   3.7657141195661483`*^9, 3.7657141215249043`*^9}, {3.765714157510751*^9, 
   3.7657141591473446`*^9}, 3.765714222616803*^9, {3.765714257774865*^9, 
   3.7657142872421155`*^9}, {3.765714407156733*^9, 3.7657144085440216`*^9}, {
   3.7657144457306566`*^9, 3.7657144638881493`*^9}, {3.765715233337839*^9, 
   3.765715266075389*^9}, {3.7657154517389793`*^9, 3.765715464342271*^9}, {
   3.765715545071929*^9, 3.7657156053908687`*^9}, {3.765715659677189*^9, 
   3.7657156864379377`*^9}, 3.7657159178332877`*^9, {3.765715953434988*^9, 
   3.7657159567870235`*^9}, {3.7657160112909265`*^9, 3.765716123719109*^9}, {
   3.7657161674131093`*^9, 3.765716180755191*^9}, {3.7657162807144938`*^9, 
   3.765716378877082*^9}, 3.765716409435362*^9, {3.765716846661668*^9, 
   3.7657168701337175`*^9}, {3.765717559806015*^9, 3.7657175602809615`*^9}, {
   3.765717805456745*^9, 3.7657178702693377`*^9}, {3.7657179899531174`*^9, 
   3.76571801161242*^9}, 3.76571814159719*^9, {3.7657181878573694`*^9, 
   3.7657183368188343`*^9}, {3.7657184391269827`*^9, 3.765718527528461*^9}, {
   3.7657185628543234`*^9, 3.76571859004775*^9}, {3.765718656391384*^9, 
   3.765718687059455*^9}, {3.7657187334774103`*^9, 3.7657187483915787`*^9}, {
   3.765718779497418*^9, 3.7657188049424605`*^9}, 3.765718842187934*^9, {
   3.765718882086337*^9, 3.7657189610343914`*^9}, {3.765718995695792*^9, 
   3.7657191195109515`*^9}, {3.7657191498458986`*^9, 3.765719175313868*^9}, {
   3.7657192211922827`*^9, 3.765719222180625*^9}, {3.765719291510832*^9, 
   3.765719293460616*^9}, {3.7657193756400414`*^9, 3.765719576078579*^9}, {
   3.765719773688579*^9, 3.7657197775343037`*^9}, {3.7657198280722666`*^9, 
   3.765719859157222*^9}, {3.7657198895759325`*^9, 3.765720012723905*^9}, 
   3.7657200505548086`*^9, {3.765720098911594*^9, 3.765720100398628*^9}, {
   3.7657205675830107`*^9, 3.7657206954922447`*^9}, {3.7657207436106815`*^9, 
   3.765720758365221*^9}, {3.7657208104989667`*^9, 3.7657209238052073`*^9}, {
   3.7657209560779963`*^9, 3.765721116606413*^9}, {3.76572115046797*^9, 
   3.765721301814579*^9}, {3.7657213420071883`*^9, 3.7657215648956437`*^9}, {
   3.765721608482182*^9, 3.7657216136523724`*^9}, {3.7657217104547358`*^9, 
   3.7657217196680927`*^9}, {3.7657217575030236`*^9, 
   3.7657219287564445`*^9}, {3.7657220807144237`*^9, 3.765722279894211*^9}, 
   3.765722313653015*^9, {3.7657223450620975`*^9, 3.7657223957845745`*^9}, {
   3.7657224412411027`*^9, 3.765722461402236*^9}, {3.765722491428475*^9, 
   3.76572251247725*^9}, {3.7657427877787223`*^9, 3.76574280780052*^9}, {
   3.7657428543050117`*^9, 3.7657428570768576`*^9}, {3.7657428998203*^9, 
   3.7657429254460974`*^9}, {3.765742971954965*^9, 3.76574299534002*^9}, {
   3.7657430859960265`*^9, 3.7657431256957808`*^9}, {3.765743160235009*^9, 
   3.7657432023874893`*^9}, {3.7657432472500305`*^9, 
   3.7657432589150114`*^9}, {3.7657432985192204`*^9, 3.76574336058463*^9}, {
   3.765743391981986*^9, 3.765743447053623*^9}, 3.766417674627818*^9, {
   3.7664177115482388`*^9, 3.7664179006667476`*^9}, {3.766418019427084*^9, 
   3.7664180241475387`*^9}, 3.7664181204104223`*^9, 3.7664182389022465`*^9, 
   3.766418272256523*^9, {3.76641843980536*^9, 3.766418442616682*^9}, {
   3.7664185373186984`*^9, 3.76641855096138*^9}, {3.7664186176775866`*^9, 
   3.766418641188094*^9}, {3.766418848104594*^9, 3.7664189139813824`*^9}, {
   3.7664189525109224`*^9, 3.766418962195997*^9}, {3.766419087039067*^9, 
   3.766419126823971*^9}, {3.76641920773116*^9, 3.7664192295463324`*^9}, {
   3.7664193171377783`*^9, 3.7664193512592297`*^9}, {3.7664194252331257`*^9, 
   3.7664194253219395`*^9}, {3.7664195554633317`*^9, 
   3.7664196088530416`*^9}, {3.766419675550029*^9, 3.7664197300024643`*^9}, {
   3.766419767996255*^9, 3.7664198247192125`*^9}, {3.7664198618182645`*^9, 
   3.766419883900631*^9}, {3.766420007559515*^9, 3.7664200097583447`*^9}, {
   3.7664200522057934`*^9, 3.7664200967423615`*^9}, {3.7664202230837336`*^9, 
   3.7664202382883244`*^9}, {3.7664202837947054`*^9, 3.766420303616276*^9}, {
   3.766420334052741*^9, 3.7664204174779606`*^9}, {3.7664209100246534`*^9, 
   3.7664209261350627`*^9}, 3.7664210630759153`*^9, {3.7664211015516014`*^9, 
   3.7664211163849287`*^9}, {3.766421237547944*^9, 3.766421265714167*^9}, {
   3.766421345918952*^9, 3.7664214515583773`*^9}, {3.7664215618078856`*^9, 
   3.7664215850184417`*^9}, {3.7664216208796115`*^9, 
   3.7664216410479455`*^9}, {3.7664220746165094`*^9, 
   3.7664220841063223`*^9}, {3.766422124910597*^9, 3.766422126315109*^9}, 
   3.766422214046912*^9, {3.7664224563228865`*^9, 3.766422484507786*^9}, {
   3.7664225195546064`*^9, 3.766422560238924*^9}, {3.7664226000075502`*^9, 
   3.7664226258939466`*^9}, {3.7664228685516205`*^9, 3.7664228751160755`*^9}, 
   3.766423026314087*^9, {3.7664231367504997`*^9, 3.7664231412274733`*^9}, {
   3.7664231797652493`*^9, 3.7664231873517003`*^9}, 3.7664232331756887`*^9, {
   3.7664232782750826`*^9, 3.7664232787138057`*^9}, {3.766423683105871*^9, 
   3.7664237013840504`*^9}, {3.7664237364771843`*^9, 
   3.7664237431457925`*^9}, {3.7664237791655183`*^9, 
   3.7664237797256484`*^9}, {3.766423844055098*^9, 3.766423853546421*^9}, {
   3.7664240095617495`*^9, 3.766424012050251*^9}, {3.7664241362524576`*^9, 
   3.7664242451676025`*^9}, {3.7664242772411456`*^9, 3.766424279059928*^9}, {
   3.7664243091252522`*^9, 3.766424310538247*^9}, {3.7664245212696505`*^9, 
   3.766424649349445*^9}, {3.766424707454233*^9, 3.766424712447743*^9}, {
   3.7664247440203185`*^9, 3.7664247474972324`*^9}, {3.766424803528678*^9, 
   3.7664248107895327`*^9}, {3.7664248652623425`*^9, 
   3.7664248658949747`*^9}, {3.7664249243961344`*^9, 
   3.7664249253084803`*^9}, {3.7664249980463424`*^9, 
   3.7664250321469665`*^9}, {3.7664250942568197`*^9, 3.766425121876207*^9}, {
   3.766425160653829*^9, 3.766425171637535*^9}, {3.7664252037676373`*^9, 
   3.766425204502268*^9}, {3.7664252396616125`*^9, 3.7664253130163436`*^9}, {
   3.7664253469856386`*^9, 3.7664253642986*^9}, 3.7664274175487843`*^9, {
   3.7664276964320803`*^9, 3.7664277231741242`*^9}, {3.766427794956321*^9, 
   3.7664278076652765`*^9}, 3.7664279574729013`*^9, {3.7664279930626497`*^9, 
   3.7664280983108454`*^9}, {3.7664281474263105`*^9, 3.766428201760756*^9}, {
   3.766428323505845*^9, 3.7664283443735948`*^9}, {3.7664283888406377`*^9, 
   3.766428437599175*^9}, {3.766428479198844*^9, 3.766428479564322*^9}, {
   3.7664285756218443`*^9, 3.7664287313558674`*^9}, {3.7664288554017925`*^9, 
   3.766428864785427*^9}, {3.7664289064484663`*^9, 3.7664289325163074`*^9}, {
   3.7664290245431995`*^9, 3.7664290254677305`*^9}, {3.7664290770239415`*^9, 
   3.7664290848131104`*^9}, {3.7664292365495353`*^9, 3.766429237379329*^9}, {
   3.766429317947968*^9, 3.7664293283671246`*^9}, {3.7664293971343117`*^9, 
   3.7664294202984114`*^9}, {3.7664294585581465`*^9, 
   3.7664294786215076`*^9}, {3.7664295207668314`*^9, 
   3.7664295309785385`*^9}, {3.7664295945785723`*^9, 
   3.7664296014133015`*^9}, {3.7664296353396254`*^9, 3.766429649437958*^9}, {
   3.7664301386493716`*^9, 3.766430146266015*^9}, {3.766430424156892*^9, 
   3.766430426152579*^9}, {3.766431182683331*^9, 3.7664312000539026`*^9}, {
   3.766431232331627*^9, 3.766431252367075*^9}, {3.7664313150814686`*^9, 
   3.766431378339368*^9}, {3.7664314329175067`*^9, 3.7664314604179945`*^9}, {
   3.7664315191190834`*^9, 3.7664315361425824`*^9}, {3.7664315762075043`*^9, 
   3.7664316475807233`*^9}, {3.7664316846277237`*^9, 
   3.7664317781577067`*^9}, {3.7664318091249056`*^9, 
   3.7664318169191017`*^9}, {3.766431861397219*^9, 3.766431874355584*^9}, {
   3.7664319589474792`*^9, 3.7664320063009095`*^9}, 3.766432058141348*^9, {
   3.7664360330702705`*^9, 3.7664362284776497`*^9}, {3.7664363418675747`*^9, 
   3.766436532225774*^9}, {3.76643671310696*^9, 3.766436855499365*^9}, {
   3.766436907287945*^9, 3.7664369241808057`*^9}, 3.7664369555230308`*^9, {
   3.766437016275467*^9, 3.7664370757243104`*^9}, {3.7664371695036507`*^9, 
   3.766437194324285*^9}, {3.76643724815641*^9, 3.766437313891708*^9}, {
   3.766437382244628*^9, 3.7664374306721716`*^9}, {3.7664375546029434`*^9, 
   3.766437629432913*^9}, {3.7664380223596897`*^9, 3.7664380438293066`*^9}, {
   3.766438181492329*^9, 3.766438245737605*^9}, {3.766438284522942*^9, 
   3.7664383869910593`*^9}, {3.766438579212289*^9, 3.7664385862215614`*^9}, {
   3.7664388704478493`*^9, 3.7664389246589465`*^9}, {3.7664392212891026`*^9, 
   3.7664392817425194`*^9}, {3.766439364900239*^9, 3.7664394189757214`*^9}, {
   3.7664394880810056`*^9, 3.7664395092673707`*^9}, {3.766439736358382*^9, 
   3.766439756477606*^9}, {3.7664402397315073`*^9, 3.7664402873033104`*^9}, {
   3.7664403441352577`*^9, 3.7664403473626795`*^9}, {3.766440421665229*^9, 
   3.7664404345958853`*^9}, {3.7664404708686123`*^9, 3.7664404721879344`*^9}, 
   3.7668921220701075`*^9, {3.766892390237379*^9, 3.7668923958098097`*^9}, {
   3.7668924262035737`*^9, 3.7668924534182816`*^9}, {3.766892503280755*^9, 
   3.766892506366147*^9}, {3.766892565421231*^9, 3.7668926049244633`*^9}, {
   3.7668926546029406`*^9, 3.7668926686049767`*^9}, {3.766892715532159*^9, 
   3.766892718943021*^9}, {3.76689277264141*^9, 3.766892879835636*^9}, {
   3.7668929765607505`*^9, 3.766892995221095*^9}, {3.7668931236264987`*^9, 
   3.766893143102906*^9}, {3.7668932855784836`*^9, 3.766893299072296*^9}, {
   3.766893331655718*^9, 3.7668933630456295`*^9}, {3.766893437751677*^9, 
   3.766893438130663*^9}, {3.766893498599862*^9, 3.7668935280397673`*^9}, {
   3.766893596157262*^9, 3.766893610300725*^9}, {3.76689385596688*^9, 
   3.7668939137838554`*^9}, {3.7668940459098253`*^9, 3.766894049495638*^9}, 
   3.7668940994360743`*^9, {3.766894293501335*^9, 3.76689429753457*^9}, {
   3.766894355560613*^9, 3.766894356079025*^9}, {3.7668943979192305`*^9, 
   3.7668944046924458`*^9}, {3.766894436002364*^9, 3.766894521199255*^9}, {
   3.7668946034128385`*^9, 3.766894611515334*^9}, {3.7668946577728024`*^9, 
   3.7668946580889745`*^9}, {3.766894739007393*^9, 3.7668947540903*^9}, {
   3.7668948155220323`*^9, 3.7668948408736153`*^9}, {3.7668948916528997`*^9, 
   3.766894915532935*^9}, {3.7668949486343946`*^9, 3.7668951396992135`*^9}, {
   3.7668951888858957`*^9, 3.7668952383397284`*^9}, {3.7668952717035475`*^9, 
   3.766895287418377*^9}, {3.7668953326866026`*^9, 3.766895336183014*^9}, {
   3.766895370467717*^9, 3.766895390728331*^9}, {3.766895463474763*^9, 
   3.766895529412356*^9}, {3.7668955631666875`*^9, 3.7668955638786287`*^9}, {
   3.7668956004260626`*^9, 3.7668956245603657`*^9}, {3.7668956591669016`*^9, 
   3.7668956754452114`*^9}, 3.7669474170488205`*^9, 3.7669474748434134`*^9, 
   3.7669476814590673`*^9, {3.766947744764512*^9, 3.7669477462275915`*^9}, {
   3.766949175940292*^9, 3.7669492064573884`*^9}, {3.7671088440456963`*^9, 
   3.7671089347430315`*^9}, {3.7671089664801593`*^9, 
   3.7671090387607937`*^9}, {3.767109085223506*^9, 3.767109156846894*^9}, {
   3.7671092313236637`*^9, 3.7671093245263195`*^9}, {3.767109355459567*^9, 
   3.767109417139579*^9}, {3.767109459035448*^9, 3.7671094687744255`*^9}, {
   3.7671095248504114`*^9, 3.7671095691708536`*^9}, {3.7671096115045958`*^9, 
   3.7671098074444375`*^9}, {3.767109844227021*^9, 3.7671098560643654`*^9}, {
   3.7671098930414333`*^9, 3.767109976279752*^9}, {3.7671100272962437`*^9, 
   3.7671100885374403`*^9}, 3.7671103372673826`*^9, {3.7671103718129797`*^9, 
   3.767110457305257*^9}, {3.7671105197183013`*^9, 3.7671105707358246`*^9}, {
   3.767110611638386*^9, 3.767110633425105*^9}, {3.7671111211629844`*^9, 
   3.767111329258293*^9}, {3.767111361609744*^9, 3.767111438943864*^9}, {
   3.767111479334807*^9, 3.767111531449359*^9}, {3.767111578849601*^9, 
   3.76711163181689*^9}, 3.7671116917445393`*^9, 3.7671117370154567`*^9, {
   3.7671118176217923`*^9, 3.767111854269786*^9}, {3.767112077418786*^9, 
   3.7671122028392925`*^9}, {3.7671122741125927`*^9, 
   3.7671122843053246`*^9}, {3.7671124197569666`*^9, 
   3.7671124255754013`*^9}, {3.767112458644967*^9, 3.767112481286394*^9}, {
   3.7673738565023785`*^9, 3.7673739042160845`*^9}, {3.7673739519760036`*^9, 
   3.767374016213834*^9}, {3.767374086208617*^9, 3.767374100560387*^9}, {
   3.767374131497832*^9, 3.767374294074424*^9}, {3.7673743693704424`*^9, 
   3.7673743843059163`*^9}, {3.767374420650117*^9, 3.7673746230921917`*^9}, {
   3.7673746568569827`*^9, 3.767374657768446*^9}, {3.767374711134795*^9, 
   3.7673750155365725`*^9}, {3.767375088816811*^9, 3.7673751496453023`*^9}, {
   3.767375193547219*^9, 3.767375213462072*^9}, {3.767375252216118*^9, 
   3.7673752578077817`*^9}, {3.7673753270060406`*^9, 3.767375557159661*^9}, {
   3.7673756029277143`*^9, 3.7673757039238586`*^9}, {3.767375769592903*^9, 
   3.7673757876267004`*^9}, {3.7673758247556987`*^9, 3.767375842424705*^9}, {
   3.767375895981*^9, 3.767375928789771*^9}, {3.7673760134180503`*^9, 
   3.7673760981750717`*^9}, {3.7673761326783295`*^9, 3.767376180231895*^9}, {
   3.767376234695568*^9, 3.7673763225931187`*^9}, {3.7673779714958973`*^9, 
   3.767377979801351*^9}, {3.767378067483861*^9, 3.7673782919455285`*^9}, 
   3.7673783241473227`*^9, {3.767378417907146*^9, 3.7673784384309764`*^9}, {
   3.7673784832236023`*^9, 3.7673784962507963`*^9}, 3.7673785564810123`*^9, {
   3.7673786861494756`*^9, 3.7673787451136703`*^9}, {3.7673788256440015`*^9, 
   3.767378971369893*^9}, {3.767379120699637*^9, 3.767379155941495*^9}, {
   3.7673791902817693`*^9, 3.7673792000214043`*^9}, {3.767379232761017*^9, 
   3.767379310385671*^9}, {3.7673793410867834`*^9, 3.7673793732107058`*^9}, {
   3.767379405646038*^9, 3.7673794286054316`*^9}, {3.7673794727284007`*^9, 
   3.767379472878871*^9}, 3.7673795245509233`*^9, {3.76737955686458*^9, 
   3.767379654215584*^9}, {3.767379739737582*^9, 3.7673798475509105`*^9}, {
   3.7673799360061116`*^9, 3.7673799441456785`*^9}, {3.7673801640163016`*^9, 
   3.7673801775657873`*^9}, {3.767380213551056*^9, 3.767380261350706*^9}, {
   3.767380318555893*^9, 3.767380330395383*^9}, {3.767380441637615*^9, 
   3.7673804422093906`*^9}, {3.7673805263001366`*^9, 
   3.7673808178065567`*^9}, {3.767380959959669*^9, 3.767381168981476*^9}, {
   3.7673812240743675`*^9, 3.767381226227262*^9}, {3.7673812632660694`*^9, 
   3.76738127091327*^9}, {3.767381304027136*^9, 3.7673813145545225`*^9}, {
   3.767381899791281*^9, 3.7673819083910093`*^9}, {3.767382105809183*^9, 
   3.7673821865263815`*^9}, {3.767382247450158*^9, 3.767382318002014*^9}, {
   3.7673823815577807`*^9, 3.76738239882632*^9}, {3.767382559340709*^9, 
   3.7673826767471275`*^9}, {3.767382747594579*^9, 3.767382757073802*^9}, {
   3.7673827910763617`*^9, 3.767382798921117*^9}, {3.7673828800790987`*^9, 
   3.767382889864217*^9}, {3.767382923807536*^9, 3.7673829325728455`*^9}, {
   3.76738298092148*^9, 3.767382986797391*^9}, {3.767383223068721*^9, 
   3.7673833678068156`*^9}, {3.7673836562329607`*^9, 
   3.7673838010974197`*^9}, {3.767383879987357*^9, 3.767383906271044*^9}, {
   3.7673840240369973`*^9, 3.767384051143482*^9}, {3.7673841018398285`*^9, 
   3.7673841339729*^9}, {3.767384232618003*^9, 3.7673843931644793`*^9}, {
   3.76738446386238*^9, 3.767384582652605*^9}, 3.7673846199059353`*^9, {
   3.7673846530043893`*^9, 3.767384678503177*^9}, {3.7673847444776487`*^9, 
   3.767384796252186*^9}, {3.767384837841915*^9, 3.767384862889907*^9}, 
   3.767547295866006*^9, 3.768102639500905*^9, {3.7681027011397305`*^9, 
   3.7681027371409874`*^9}, 3.7681028025287447`*^9, 3.768102836765278*^9, {
   3.768103126428593*^9, 3.768103138097584*^9}, {3.7681031982691956`*^9, 
   3.7681032129530983`*^9}, {3.7681032568939466`*^9, 3.768103292138812*^9}, {
   3.768103336905319*^9, 3.768103372523199*^9}, {3.7681034469451275`*^9, 
   3.7681034474286084`*^9}, {3.7681036279695973`*^9, 3.76810373786791*^9}, {
   3.768103793683921*^9, 3.7681038165110655`*^9}, {3.7681038885416603`*^9, 
   3.768104008627116*^9}, {3.7681041502478456`*^9, 3.7681041602737527`*^9}, {
   3.768104234853619*^9, 3.7681042617092004`*^9}, {3.7681043319579544`*^9, 
   3.768104370980482*^9}, 3.768104472308213*^9, {3.768104505400237*^9, 
   3.7681045244936657`*^9}, {3.7681047798029613`*^9, 3.7681047837218227`*^9}, 
   3.768104837351835*^9, {3.7681048778209314`*^9, 3.7681049207072945`*^9}, {
   3.768105035527458*^9, 3.7681050811275077`*^9}, {3.768105162075054*^9, 
   3.768105219681382*^9}, {3.768105251710472*^9, 3.7681054677954383`*^9}, {
   3.7681055237754817`*^9, 3.7681055503549123`*^9}, {3.768105672443735*^9, 
   3.7681056758321185`*^9}, {3.768105708423297*^9, 3.7681057879997907`*^9}, {
   3.7681059007435207`*^9, 3.7681059710320663`*^9}, {3.768106019612651*^9, 
   3.768106043025012*^9}, {3.7681060959025*^9, 3.7681061023055468`*^9}, {
   3.7681061996467686`*^9, 3.7681062221117506`*^9}, {3.7681063435882115`*^9, 
   3.7681063633514557`*^9}, {3.768106458349144*^9, 3.7681064586398034`*^9}, {
   3.7681065098570085`*^9, 3.7681065252155085`*^9}, {3.7681066512090473`*^9, 
   3.7681066606371527`*^9}, {3.7681066960158715`*^9, 
   3.7681067739833264`*^9}, {3.7681069554860163`*^9, 3.768107002380762*^9}, {
   3.7681071018074474`*^9, 3.7681071313570232`*^9}, {3.7681071630253267`*^9, 
   3.76810716407325*^9}, {3.7681072016399307`*^9, 3.7681072060734587`*^9}, {
   3.768107282287525*^9, 3.768107289770321*^9}, {3.7681074672522106`*^9, 
   3.7681075109239855`*^9}, {3.768107563098762*^9, 3.7681075943650885`*^9}, {
   3.768107631056157*^9, 3.7681077071015263`*^9}, {3.7681077862775674`*^9, 
   3.7681078026810427`*^9}, {3.768107850475113*^9, 3.7681078647751417`*^9}, {
   3.768108075347302*^9, 3.768108127953332*^9}, {3.7681081683676867`*^9, 
   3.7681081884300685`*^9}, {3.768108274309484*^9, 3.768108302323721*^9}, 
   3.7681083551335077`*^9, {3.768108391017578*^9, 3.7681084455537834`*^9}, 
   3.7681084903051486`*^9, 3.7681085228172655`*^9, {3.7681085967207007`*^9, 
   3.768108597668131*^9}, 3.768108671452882*^9, {3.7681087808873262`*^9, 
   3.7681087987356124`*^9}, {3.768108841540181*^9, 3.7681088569799056`*^9}, {
   3.7681088900873985`*^9, 3.768108898543792*^9}, {3.768108955608239*^9, 
   3.7681089694203157`*^9}, {3.7681091034270706`*^9, 
   3.7681091175802345`*^9}, {3.7681092615124555`*^9, 
   3.7681093127285385`*^9}, {3.7681093508975*^9, 3.7681093588282986`*^9}, {
   3.7681094086341515`*^9, 3.768109424049939*^9}, 3.768109466496465*^9, {
   3.768109522430934*^9, 3.7681095326396427`*^9}, {3.768109632421892*^9, 
   3.7681096521980553`*^9}, {3.7681096856954746`*^9, 3.768109687613346*^9}, {
   3.768109732762647*^9, 3.7681097333969517`*^9}, 3.768109766270071*^9, {
   3.7681098039762707`*^9, 3.768109824104461*^9}, {3.7681098969088306`*^9, 
   3.7681099612648163`*^9}, {3.7681100095197845`*^9, 
   3.7681100180001125`*^9}, {3.7681100730400195`*^9, 
   3.7681100763860283`*^9}, {3.768110357587315*^9, 3.7681103630466895`*^9}, {
   3.768110415753786*^9, 3.768110417161024*^9}, 3.7681105125280757`*^9, {
   3.7681105768830338`*^9, 3.76811058046047*^9}, {3.7681106525337934`*^9, 
   3.7681107821552734`*^9}, {3.7681108864065742`*^9, 3.768110917266077*^9}, {
   3.768111033996019*^9, 3.768111166314302*^9}, 3.7681112669981403`*^9, {
   3.768111303156508*^9, 3.768111331971446*^9}, {3.768111417684339*^9, 
   3.768111421886073*^9}, {3.7681115127312136`*^9, 3.768111576507718*^9}, {
   3.7681117284764557`*^9, 3.768111731153299*^9}, {3.7681117624336767`*^9, 
   3.7681118779159555`*^9}, {3.7681119126640615`*^9, 3.768111913029085*^9}, {
   3.7681119470142317`*^9, 3.768111954752544*^9}, {3.7681120218731084`*^9, 
   3.7681120895312676`*^9}, {3.768112123811594*^9, 3.7681121537565413`*^9}, 
   3.768112263128154*^9, {3.7681536766011057`*^9, 3.7681536842564335`*^9}, {
   3.768154513788669*^9, 3.768154535103471*^9}, {3.7681547710642242`*^9, 
   3.768154777202363*^9}, {3.768154807229429*^9, 3.768154873553898*^9}, {
   3.7681549332399144`*^9, 3.7681549540175347`*^9}, 3.768154987284272*^9, {
   3.768155021975093*^9, 3.7681551499346013`*^9}, {3.768161101228179*^9, 
   3.76816118563091*^9}, {3.76816121763365*^9, 3.7681612740278015`*^9}, {
   3.7681613643833413`*^9, 3.768161384596759*^9}, {3.768161416863373*^9, 
   3.768161434740972*^9}, {3.768161465205476*^9, 3.7681615549036837`*^9}, 
   3.7681617608227625`*^9, {3.7681618466834755`*^9, 3.7681618616625943`*^9}, {
   3.768162288151637*^9, 3.768162342144537*^9}, {3.768162376617463*^9, 
   3.7681623892000027`*^9}, {3.768162516802166*^9, 3.768162633117036*^9}, {
   3.7681627467597666`*^9, 3.7681627700335054`*^9}, 3.7681628227795568`*^9, {
   3.7681628879309506`*^9, 3.7681628913658776`*^9}, 3.7681629375897427`*^9, {
   3.7681629936791143`*^9, 3.768163035477334*^9}, {3.7681631695829697`*^9, 
   3.7681632066598516`*^9}, {3.7681633510554953`*^9, 3.768163375217479*^9}, {
   3.768163438169484*^9, 3.76816347465718*^9}, {3.768163685385854*^9, 
   3.7681636873122725`*^9}, {3.768163731081252*^9, 3.7681637361137004`*^9}, {
   3.7681638105369806`*^9, 3.7681638971864414`*^9}, {3.768163963659562*^9, 
   3.7681641367152147`*^9}, 3.7682424424972925`*^9, 3.768242476211165*^9, 
   3.768242602829669*^9, {3.7682426364258547`*^9, 3.768242642523554*^9}, {
   3.7682426744362407`*^9, 3.7682426800711927`*^9}, {3.7682427194170084`*^9, 
   3.768242722390044*^9}, {3.7682428846293283`*^9, 3.768243004168758*^9}, {
   3.7682430648804665`*^9, 3.7682430850963793`*^9}, {3.7682431191553526`*^9, 
   3.7682431219877877`*^9}, {3.7682432583262787`*^9, 3.768243262099222*^9}, {
   3.768243315345889*^9, 3.768243322010062*^9}, {3.7682434113721666`*^9, 
   3.7682434178418875`*^9}, {3.7682435856911564`*^9, 3.768243633422551*^9}, {
   3.7682436742294636`*^9, 3.7682436889102216`*^9}, {3.768243734444487*^9, 
   3.7682437359055843`*^9}, {3.768243843879934*^9, 3.7682439017332687`*^9}, {
   3.768243950481941*^9, 3.768243954390499*^9}, {3.7682439891705217`*^9, 
   3.768244041113661*^9}, {3.768244075760024*^9, 3.768244078716154*^9}, {
   3.7682441106248493`*^9, 3.768244110839261*^9}, {3.768244234293228*^9, 
   3.768244328300914*^9}, {3.768244433349085*^9, 3.768244449965662*^9}, {
   3.768244495922803*^9, 3.7682446682790413`*^9}, {3.7682447181466937`*^9, 
   3.7682447189645066`*^9}, {3.7682448047302732`*^9, 
   3.7682448863071885`*^9}, {3.768244925358779*^9, 3.768245018982492*^9}, {
   3.768245074076207*^9, 3.768245141256612*^9}, {3.7682451911931305`*^9, 
   3.76824519909499*^9}, {3.768245256285103*^9, 3.7682452702278323`*^9}, {
   3.76824532508119*^9, 3.76824547762341*^9}, {3.768245565224205*^9, 
   3.76824561627238*^9}, {3.7682456683212366`*^9, 3.768245669938916*^9}, {
   3.7682457070287595`*^9, 3.7682457071933184`*^9}, {3.768245741439783*^9, 
   3.7682459754518166`*^9}, {3.7682460191220446`*^9, 
   3.7682460191859016`*^9}, {3.768246090198058*^9, 3.7682461536573825`*^9}, {
   3.7682462234548225`*^9, 3.768246223518653*^9}, {3.768246296526484*^9, 
   3.768246344477292*^9}, {3.768246439190096*^9, 3.768246451080306*^9}, 
   3.768246716334193*^9, {3.768246747665434*^9, 3.768246856213252*^9}, {
   3.768246889487299*^9, 3.768246926574153*^9}, {3.768248332040662*^9, 
   3.768248384927931*^9}, 3.768262690362389*^9, {3.76826273065268*^9, 
   3.7682627352533803`*^9}, 3.76857974017762*^9, 3.7685797746070166`*^9, {
   3.7685798833629084`*^9, 3.768579918135585*^9}, {3.768579971211032*^9, 
   3.768580026169654*^9}, {3.7685800942389975`*^9, 3.768580138017064*^9}, 
   3.768580180397095*^9, {3.768580210676853*^9, 3.768580234962067*^9}, {
   3.768580269624526*^9, 3.7685802744987445`*^9}, {3.7685803736265793`*^9, 
   3.768580406496337*^9}, {3.768580463323413*^9, 3.7685804708273478`*^9}, {
   3.768580600978901*^9, 3.768580610837414*^9}, {3.76858153050708*^9, 
   3.768581707832096*^9}, {3.7685818323351345`*^9, 3.7685818672321672`*^9}, {
   3.7685818976026464`*^9, 3.768581909147465*^9}, 3.768581950209402*^9, {
   3.768582023499954*^9, 3.76858202554828*^9}, {3.768582061213703*^9, 
   3.76858206908374*^9}, {3.7685822047330556`*^9, 3.7685822118693485`*^9}, 
   3.768582327040464*^9, {3.7685824330064096`*^9, 3.7685824557080584`*^9}, {
   3.768582496083259*^9, 3.7685825291641736`*^9}, 3.7685825833658395`*^9, {
   3.7685830532910366`*^9, 3.768583060809335*^9}, {3.7685836815536785`*^9, 
   3.768583722705538*^9}, {3.7685837588248076`*^9, 3.7685837843280263`*^9}, {
   3.768747530577799*^9, 3.7687475687311273`*^9}, {3.7687476033371973`*^9, 
   3.768747649700666*^9}, {3.768747693611065*^9, 3.76874771513225*^9}, {
   3.768747774363908*^9, 3.768747919268609*^9}, {3.7687479508120365`*^9, 
   3.7687480083834715`*^9}, {3.7687480456366215`*^9, 3.768748073352132*^9}, {
   3.7687481091291556`*^9, 3.768748140932517*^9}, {3.768748286164154*^9, 
   3.768748354052843*^9}, {3.7687483864485188`*^9, 3.7687483934851565`*^9}, {
   3.7687485666726665`*^9, 3.768748591024499*^9}, {3.768748773637829*^9, 
   3.7687487982961245`*^9}, {3.768748836900137*^9, 3.768748912881835*^9}, {
   3.768748950840672*^9, 3.768749010139098*^9}, 3.7687490752398834`*^9, {
   3.768749123203664*^9, 3.7687491631009717`*^9}, {3.768749215032172*^9, 
   3.768749241215146*^9}, {3.768749321918434*^9, 3.768749332752467*^9}, {
   3.768749521681398*^9, 3.7687495873887444`*^9}, {3.7687496279412994`*^9, 
   3.76874964964433*^9}, {3.7687496946140604`*^9, 3.76874973075049*^9}, {
   3.7687498666870947`*^9, 3.768749919478953*^9}, {3.768749986932624*^9, 
   3.7687501517939143`*^9}, {3.7687501890572805`*^9, 3.768750198192827*^9}, {
   3.7687502384462495`*^9, 3.768750239308943*^9}, {3.7687502710969625`*^9, 
   3.7687503912148466`*^9}, {3.768750473972607*^9, 3.7687505122712393`*^9}, {
   3.768750566403514*^9, 3.7687507095817585`*^9}, {3.7687508000598373`*^9, 
   3.768750834381135*^9}, {3.768750902144961*^9, 3.768750944830862*^9}, {
   3.7687510273811812`*^9, 3.76875112399089*^9}, {3.7687512347079134`*^9, 
   3.768751325660762*^9}, {3.7687515422886467`*^9, 3.768751699321842*^9}, {
   3.768751739692917*^9, 3.7687517762102633`*^9}, {3.7687520066681724`*^9, 
   3.76875200838862*^9}, {3.768752056722361*^9, 3.768752077751174*^9}, {
   3.768752710770624*^9, 3.7687527141176767`*^9}, 3.7695234833768063`*^9, {
   3.7695235487063527`*^9, 3.7695235501335382`*^9}, {3.7695239276006527`*^9, 
   3.7695239654105883`*^9}, {3.7695240020506544`*^9, 
   3.7695241339620967`*^9}, {3.7695241834029245`*^9, 
   3.7695241981405487`*^9}, {3.7695244442726545`*^9, 3.769524512518255*^9}, {
   3.7695250867115135`*^9, 3.769525240977169*^9}, {3.7695253018534555`*^9, 
   3.769525304358774*^9}, {3.7695254108950143`*^9, 3.769525417808522*^9}, {
   3.769525657083971*^9, 3.7695256956927752`*^9}, {3.769525756253907*^9, 
   3.769525774863169*^9}, {3.7695258284110374`*^9, 3.769525919230259*^9}, {
   3.769525952711809*^9, 3.7695259756474943`*^9}, {3.769526007829475*^9, 
   3.7695260227256756`*^9}, {3.7695261430041723`*^9, 3.769526205208909*^9}, {
   3.769526267766704*^9, 3.769526285231018*^9}, {3.769526530998127*^9, 
   3.769526628247181*^9}, {3.769526721877887*^9, 3.769526819469861*^9}, {
   3.7695268529902544`*^9, 3.7695269405671835`*^9}, {3.769526972312318*^9, 
   3.7695270254812107`*^9}, {3.7695311332825017`*^9, 
   3.7695311378296275`*^9}, {3.7695311877818193`*^9, 
   3.7695311924750977`*^9}, {3.7695312359163485`*^9, 
   3.7695312529647646`*^9}, {3.7695313230192957`*^9, 3.7695313234094906`*^9}, 
   3.7695313834551897`*^9, {3.7695314142316637`*^9, 3.769531428126753*^9}, {
   3.7695314726647687`*^9, 3.7695314756259084`*^9}, {3.769531530486464*^9, 
   3.7695315853933744`*^9}, {3.7695316398220253`*^9, 
   3.7695316403516245`*^9}, {3.769531752692424*^9, 3.7695318297063637`*^9}, {
   3.769531870025124*^9, 3.769531905558579*^9}, {3.7695319369721136`*^9, 
   3.7695319415550814`*^9}, {3.7695320330988455`*^9, 3.76953203357458*^9}, {
   3.7695321121882734`*^9, 3.7695321137434826`*^9}, {3.7695322555880637`*^9, 
   3.7695322682842913`*^9}, {3.7695323266305475`*^9, 
   3.7695323273488193`*^9}, {3.769532454683649*^9, 3.769532458854613*^9}, {
   3.7695324969564695`*^9, 3.7695326308902345`*^9}, {3.7695326707210665`*^9, 
   3.7695329298164053`*^9}, {3.7695329785317216`*^9, 3.769533047268506*^9}, {
   3.769533078645029*^9, 3.7695330956754475`*^9}, {3.769533241236916*^9, 
   3.7695332781309524`*^9}, {3.7695334234089932`*^9, 3.769533457980296*^9}, {
   3.7695335064555893`*^9, 3.7695335439402714`*^9}, {3.7695336176081223`*^9, 
   3.769533643531951*^9}, {3.769533729123109*^9, 3.769533794462501*^9}, {
   3.7695342327124486`*^9, 3.769534242281316*^9}, {3.769534273697665*^9, 
   3.7695343037260623`*^9}, {3.7695343367691393`*^9, 
   3.7695343606472664`*^9}, {3.7695344350651045`*^9, 
   3.7695344415469112`*^9}, {3.7695344953728895`*^9, 3.769534592543292*^9}, {
   3.7696122221924906`*^9, 3.769612328087451*^9}, {3.7696123656999207`*^9, 
   3.769612368650029*^9}, {3.769612489131995*^9, 3.769612492989691*^9}, {
   3.7696125560391636`*^9, 3.769612558507566*^9}, {3.769612629003106*^9, 
   3.7696126906364055`*^9}, {3.7696127277940903`*^9, 3.769612765258947*^9}, {
   3.7696128042128267`*^9, 3.76961281628456*^9}, {3.769612860493396*^9, 
   3.769612895946637*^9}, {3.7696129314597178`*^9, 3.7696129491145253`*^9}, {
   3.769613006832253*^9, 3.769613018893022*^9}, {3.7696130614462776`*^9, 
   3.7696130644033737`*^9}, {3.7696132625706964`*^9, 
   3.7696133032180543`*^9}, {3.76961341216286*^9, 3.769613414372955*^9}, {
   3.7696134800593944`*^9, 3.7696134928352365`*^9}, {3.7696138481934123`*^9, 
   3.7696138696370897`*^9}, {3.769614049095421*^9, 3.769614124075033*^9}, {
   3.769614199911326*^9, 3.769614203647341*^9}, {3.7696145072747707`*^9, 
   3.769614509358202*^9}, {3.7696145696859517`*^9, 3.769614615172386*^9}, {
   3.7696146695849495`*^9, 3.7696146779176693`*^9}, {3.7696223059954205`*^9, 
   3.769622306811432*^9}, {3.769622393698738*^9, 3.769622396092461*^9}, {
   3.7697037448898783`*^9, 3.7697037475841365`*^9}, {3.769704034192453*^9, 
   3.769704050390707*^9}, {3.7697044023518257`*^9, 3.7697044632798915`*^9}, {
   3.7697045044307528`*^9, 3.7697045077511654`*^9}, {3.769704576602831*^9, 
   3.7697045870516014`*^9}, {3.769704625950925*^9, 3.769704630675764*^9}, {
   3.769704682705578*^9, 3.7697046885022383`*^9}, {3.769704816614666*^9, 
   3.7697048921803927`*^9}, {3.7697049412804413`*^9, 
   3.7697050347448263`*^9}, {3.76970507593287*^9, 3.769705100650731*^9}, {
   3.769705206562228*^9, 3.7697052175612307`*^9}, {3.7697052485149555`*^9, 
   3.7697053032253838`*^9}, {3.7697053698118644`*^9, 3.769705370705485*^9}, {
   3.7697054099892387`*^9, 3.769705440791334*^9}, {3.769705483802433*^9, 
   3.76970548763635*^9}, {3.769705534289542*^9, 3.7697055413046093`*^9}, {
   3.7697058187099857`*^9, 3.76970583732436*^9}, {3.7697058870324507`*^9, 
   3.769705970714572*^9}, {3.7697060127326827`*^9, 3.769706016021882*^9}, {
   3.769706131924079*^9, 3.7697062160881343`*^9}, {3.7697063107939825`*^9, 
   3.7697064288249016`*^9}, {3.769706547590455*^9, 3.769706673747254*^9}, {
   3.769706720249959*^9, 3.769706722336383*^9}, {3.7697068052836747`*^9, 
   3.76970685651674*^9}, {3.769706910150382*^9, 3.769706942842002*^9}, {
   3.7697069801692305`*^9, 3.7697069826535892`*^9}, {3.769707054885523*^9, 
   3.7697070579593143`*^9}, {3.7697070924241877`*^9, 3.769707112988222*^9}, {
   3.769707146798044*^9, 3.7697071680572243`*^9}, {3.7697072083445263`*^9, 
   3.769707212584194*^9}, {3.769789047325947*^9, 3.7697890810096903`*^9}, {
   3.769789225975128*^9, 3.7697893600797176`*^9}, {3.7697894498786755`*^9, 
   3.7697894862040195`*^9}, {3.7697895494896307`*^9, 3.769789567860607*^9}, {
   3.7697896922784977`*^9, 3.769789696538842*^9}, {3.769789787953659*^9, 
   3.769789812065748*^9}, {3.769790136821273*^9, 3.7697901721352324`*^9}, {
   3.7697902278420525`*^9, 3.769790246043197*^9}, {3.769790293866476*^9, 
   3.7697903094317617`*^9}, {3.7697903855906615`*^9, 
   3.7697904845289726`*^9}, {3.769790606299938*^9, 3.7697906270797777`*^9}, {
   3.7697907105923915`*^9, 3.7697907139915266`*^9}, {3.7697908462854476`*^9, 
   3.7697908703205175`*^9}, {3.7697914746804023`*^9, 3.769791484796318*^9}, {
   3.769791603325026*^9, 3.769791643043393*^9}, {3.7697916891651487`*^9, 
   3.7697917642291775`*^9}, {3.769791827572869*^9, 3.7697918394022503`*^9}, {
   3.7697920900642633`*^9, 3.7697921459229603`*^9}, {3.7697922213224277`*^9, 
   3.769792247412693*^9}, {3.769792348993181*^9, 3.769792369258016*^9}, {
   3.7697924798693976`*^9, 3.769792480487714*^9}, 3.7697926481914635`*^9, {
   3.769793029033556*^9, 3.769793044403442*^9}, {3.769793081413557*^9, 
   3.769793147505864*^9}, {3.7697932690120926`*^9, 3.769793303253571*^9}, {
   3.769793400808818*^9, 3.769793425950618*^9}, {3.7697934976998415`*^9, 
   3.769793509494316*^9}, {3.7697935676149673`*^9, 3.769793682948696*^9}, {
   3.7697937635163493`*^9, 3.7697939085895877`*^9}, {3.7697939786114283`*^9, 
   3.7697941574573975`*^9}, {3.7697942084520965`*^9, 
   3.7697942489398766`*^9}, {3.7697943445014524`*^9, 3.769794354980444*^9}, 
   3.7697943852595124`*^9, {3.769794427607482*^9, 3.7697944857161646`*^9}, {
   3.7697945540156097`*^9, 3.7697945564650617`*^9}, {3.7697946111608667`*^9, 
   3.769794613299183*^9}, 3.7697946473860416`*^9, {3.769794723419815*^9, 
   3.7697949408546395`*^9}, {3.76979502315965*^9, 3.7697950594187346`*^9}, {
   3.769795155863949*^9, 3.769795159635867*^9}, {3.7697952518613605`*^9, 
   3.7697953229852924`*^9}, 3.7697954437584763`*^9, {3.7697954859237423`*^9, 
   3.7697954879064436`*^9}, 3.7697955600366488`*^9, 3.769795595894805*^9, {
   3.7697956654060106`*^9, 3.76979572466861*^9}, 3.769795802955359*^9, {
   3.769795971289425*^9, 3.7697961275367966`*^9}, {3.7697962606599755`*^9, 
   3.7697962741728907`*^9}, {3.7697963195844793`*^9, 
   3.7697963264391565`*^9}, {3.7697963614585543`*^9, 3.7697964643156323`*^9}, 
   3.769796528377403*^9, {3.769796629287683*^9, 3.7697966319964437`*^9}, {
   3.769796795798621*^9, 3.7697968120761137`*^9}, {3.7697968877917366`*^9, 
   3.7697969141482887`*^9}, 3.769796947138112*^9, {3.7697970085579453`*^9, 
   3.7697970775615077`*^9}, {3.7697972010474453`*^9, 3.76979721955797*^9}, {
   3.769797258826969*^9, 3.769797330406646*^9}, {3.7697973730496664`*^9, 
   3.769797526137483*^9}, {3.76979756054751*^9, 3.7697976084305253`*^9}, {
   3.7697976723766055`*^9, 3.7697977148491154`*^9}, {3.76979777001164*^9, 
   3.7697978184212465`*^9}, {3.7697978607491107`*^9, 
   3.7697978989609756`*^9}, {3.769797999662813*^9, 3.7697980984148617`*^9}, {
   3.769798131364792*^9, 3.76979823302407*^9}, {3.7697983002414064`*^9, 
   3.7697985159239554`*^9}, {3.769798569048919*^9, 3.769798621799923*^9}, {
   3.7697986690396576`*^9, 3.7697986903108025`*^9}, {3.7697988963919744`*^9, 
   3.7697989715654545`*^9}, {3.7697990730531993`*^9, 3.769799077522211*^9}, {
   3.7697991863593035`*^9, 3.769799194852602*^9}, {3.7697992714698153`*^9, 
   3.769799661121329*^9}, {3.7697998542630863`*^9, 3.7698000138106375`*^9}, {
   3.7698000769718637`*^9, 3.769800106897827*^9}, 3.7698014057168074`*^9, {
   3.7698047286145487`*^9, 3.7698048118420916`*^9}, {3.76980558609562*^9, 
   3.7698055975140977`*^9}, {3.7698059300302925`*^9, 
   3.7698059356523027`*^9}, {3.769805972468893*^9, 3.769805990286268*^9}, {
   3.769806100223443*^9, 3.769806106165507*^9}, {3.7698061545891094`*^9, 
   3.769806162475031*^9}, {3.7699071883225956`*^9, 3.769907189268053*^9}, {
   3.769907223446621*^9, 3.7699072846578665`*^9}, {3.7699075219258156`*^9, 
   3.769907579963554*^9}, 3.7699565366744437`*^9, {3.7699567528967586`*^9, 
   3.7699568675053253`*^9}, {3.7699569550916367`*^9, 3.769956999908984*^9}, {
   3.7699570353892803`*^9, 3.7699570862634554`*^9}, {3.7699587076332083`*^9, 
   3.7699587287526107`*^9}, {3.7699588109910717`*^9, 
   3.7699589345895224`*^9}, {3.7699589802865114`*^9, 3.769958993215022*^9}, {
   3.769959588450365*^9, 3.7699596594365144`*^9}, {3.7699597432867975`*^9, 
   3.769959767968861*^9}, {3.7699598028054237`*^9, 3.7699598355061703`*^9}, {
   3.7699598786449146`*^9, 3.7699599036814704`*^9}, {3.769959975212927*^9, 
   3.769959976552074*^9}, {3.76996014708332*^9, 3.7699601657477016`*^9}, {
   3.769960356037037*^9, 3.769960392666849*^9}, {3.7699604537286515`*^9, 
   3.769960472254974*^9}, {3.769960539199769*^9, 3.769960602663635*^9}, {
   3.7699606404151335`*^9, 3.7699607065974026`*^9}, {3.7699607440885816`*^9, 
   3.7699607461213083`*^9}, {3.7699607844714327`*^9, 
   3.7699608366062098`*^9}, {3.769960904993131*^9, 3.769960905356778*^9}, 
   3.7699672336572256`*^9, {3.7699677952870936`*^9, 3.7699678647732077`*^9}, {
   3.7699679720801296`*^9, 3.7699680083291564`*^9}, {3.769968119808925*^9, 
   3.7699681799362307`*^9}, {3.7699682430264826`*^9, 
   3.7699682439899063`*^9}, {3.7703992693796096`*^9, 
   3.7703992708297367`*^9}, {3.7703993147040105`*^9, 
   3.7703993485302286`*^9}, {3.770399381291032*^9, 3.770399490839391*^9}, {
   3.770399567156086*^9, 3.770399580039637*^9}, {3.770399632888335*^9, 
   3.7703996336469326`*^9}, {3.770399671917466*^9, 3.77039967551046*^9}, {
   3.770399748915782*^9, 3.7703997528404064`*^9}, {3.7704001266937666`*^9, 
   3.77040014359264*^9}, 3.7704002066002035`*^9, {3.7704002913345833`*^9, 
   3.7704003160367346`*^9}, {3.7704005950967913`*^9, 3.770400735819621*^9}, {
   3.770402258429654*^9, 3.7704023337894936`*^9}, {3.7704023834195504`*^9, 
   3.7704023866956344`*^9}, {3.7704026366310525`*^9, 
   3.7704026608751593`*^9}, {3.7704027299652634`*^9, 3.770402767568638*^9}, {
   3.7704029844775286`*^9, 3.7704029873295455`*^9}, 3.7704031255166817`*^9, 
   3.770403194336359*^9, {3.770403252235207*^9, 3.770403270313087*^9}, {
   3.7704033468766403`*^9, 3.7704033657064238`*^9}, {3.7704034118182063`*^9, 
   3.7704036171637506`*^9}, 3.770403744176224*^9, {3.7704041171111584`*^9, 
   3.770404152459085*^9}, {3.7704043466578474`*^9, 3.7704043598835297`*^9}, {
   3.7704044067970076`*^9, 3.770404503789286*^9}, {3.770409777694646*^9, 
   3.7704097882672896`*^9}, {3.7705653540885553`*^9, 3.77056544845422*^9}, {
   3.770565574768383*^9, 3.770565809281576*^9}, {3.7705662022885857`*^9, 
   3.770566217081175*^9}, {3.770566256384828*^9, 3.7705662611924286`*^9}, 
   3.770566717025985*^9, {3.770566759151745*^9, 3.770566781695119*^9}, 
   3.770566821963541*^9, {3.7705668723358707`*^9, 3.770566876081313*^9}, {
   3.7705671619906287`*^9, 3.7705672627314024`*^9}, {3.770567302958621*^9, 
   3.770567309050967*^9}, {3.7705674242556715`*^9, 3.770567427219323*^9}, {
   3.770567460128642*^9, 3.7705674656173306`*^9}, {3.7705675685549135`*^9, 
   3.770567679236294*^9}, {3.770567710071974*^9, 3.7705677356527605`*^9}, {
   3.7705678033309574`*^9, 3.7705679374202833`*^9}, {3.7705680223992715`*^9, 
   3.770568280856137*^9}, {3.7705683130016108`*^9, 3.770568319117135*^9}, {
   3.770572171553342*^9, 3.770572177354783*^9}, {3.770572208982189*^9, 
   3.770572235628402*^9}, 3.770572279226811*^9, {3.7705723338167114`*^9, 
   3.7705723358303385`*^9}, {3.770572494248515*^9, 3.770572570091556*^9}, {
   3.770572644392703*^9, 3.770572697838683*^9}, {3.770572793407916*^9, 
   3.7705728130144463`*^9}, {3.7705729083333607`*^9, 
   3.7705729623308687`*^9}, {3.770573043551501*^9, 3.770573146730381*^9}, {
   3.7705733177025146`*^9, 3.7705733189950438`*^9}, {3.7705734049420395`*^9, 
   3.7705735433187284`*^9}, {3.7705736198539085`*^9, 3.770573648783494*^9}, 
   3.770573698858494*^9, {3.7705737840614767`*^9, 3.770573814582795*^9}, {
   3.7705738775781765`*^9, 3.770573902666072*^9}, {3.770573942486474*^9, 
   3.770573949688201*^9}, {3.7705739904720917`*^9, 3.770573990683523*^9}, {
   3.7705741665129843`*^9, 3.7705741722685905`*^9}, 3.7705742235989513`*^9, {
   3.770574257924104*^9, 3.7705742696099916`*^9}, {3.7705743092994013`*^9, 
   3.7705743094689503`*^9}, {3.7705743552377787`*^9, 
   3.7705744409204006`*^9}, {3.7705745028236723`*^9, 3.770574507759901*^9}, {
   3.7705992234943647`*^9, 3.7705992693774986`*^9}, {3.7705993106969633`*^9, 
   3.7705993113143435`*^9}, {3.770599348789301*^9, 3.7705993508709927`*^9}, {
   3.7705995665849686`*^9, 3.770599569605133*^9}, {3.7705996827629013`*^9, 
   3.7705997833128586`*^9}, {3.7706005469083433`*^9, 
   3.7706005835595846`*^9}, {3.7706006793376093`*^9, 3.770600759982797*^9}, {
   3.7706010232277193`*^9, 3.7706010575320826`*^9}, 3.77063314314578*^9, {
   3.770634482533697*^9, 3.770634534003288*^9}, {3.770634577600599*^9, 
   3.7706346418525743`*^9}, {3.7706347085637836`*^9, 3.770634711144148*^9}, {
   3.77063478645741*^9, 3.7706347870492783`*^9}, {3.770635060598507*^9, 
   3.7706350821991296`*^9}, {3.770635263814577*^9, 3.770635263992893*^9}, 
   3.770635368109503*^9, {3.7706360392621045`*^9, 3.77063606753034*^9}, {
   3.771154679729991*^9, 3.7711546837365327`*^9}, {3.771154759033001*^9, 
   3.771154808999846*^9}, {3.771154920316389*^9, 3.7711549864897184`*^9}, {
   3.771155052164691*^9, 3.771155056715553*^9}, {3.7711551384726815`*^9, 
   3.771155184889475*^9}, {3.7711552192090425`*^9, 3.7711553093267736`*^9}, {
   3.771155391364335*^9, 3.7711553915416803`*^9}, {3.7711556044516487`*^9, 
   3.771155636164222*^9}, {3.771155667253736*^9, 3.771155704180973*^9}, {
   3.771155747125677*^9, 3.7711557510335226`*^9}, {3.771155953048538*^9, 
   3.771155958058321*^9}, {3.7711560124077306`*^9, 3.771156035944291*^9}, {
   3.771156083420105*^9, 3.7711562220676575`*^9}, {3.7711563155596724`*^9, 
   3.771156331704054*^9}, {3.7711564013867083`*^9, 3.77115653701648*^9}, {
   3.771156574800553*^9, 3.7711565772448854`*^9}, {3.7711566146368427`*^9, 
   3.7711567232658176`*^9}, 3.771156825077752*^9, {3.771156858106448*^9, 
   3.771156858591256*^9}, {3.771157356876983*^9, 3.771157364206411*^9}, {
   3.7711585702882905`*^9, 3.7711586243227634`*^9}, {3.771158692384359*^9, 
   3.771158699460429*^9}, {3.771158749441755*^9, 3.7711587496252546`*^9}, {
   3.7711587801027327`*^9, 3.771158783356037*^9}, {3.7711588425417256`*^9, 
   3.7711588952198343`*^9}, {3.771158928542701*^9, 3.771158941156969*^9}, {
   3.7711589775037427`*^9, 3.771158978051276*^9}, 3.77115902878757*^9, 
   3.771159098615801*^9, {3.7711592878516436`*^9, 3.7711592880730543`*^9}, {
   3.7711594930847044`*^9, 3.7711594932343087`*^9}, {3.7711595278636804`*^9, 
   3.7711595424008083`*^9}, {3.771159576072731*^9, 3.7711595915672874`*^9}, {
   3.7711596599404144`*^9, 3.771159687941514*^9}, {3.7711597734388328`*^9, 
   3.7711598361979666`*^9}, {3.7711598670574274`*^9, 
   3.7711599262640686`*^9}, {3.771160022642282*^9, 3.7711602261679077`*^9}, {
   3.7711618043936744`*^9, 3.771161907658631*^9}, {3.7711619407794924`*^9, 
   3.7711619505712557`*^9}, {3.7711620190759106`*^9, 
   3.7711620666352034`*^9}, {3.77116209784595*^9, 3.771162345781289*^9}, {
   3.7711624000091343`*^9, 3.771162400207358*^9}, {3.771162458230485*^9, 
   3.771162470293555*^9}, {3.7711625008591633`*^9, 3.771162520694949*^9}, {
   3.7711625547082014`*^9, 3.7711626339257936`*^9}, 3.771162791274125*^9, 
   3.7711635088882*^9, {3.771163708903505*^9, 3.7711637962637634`*^9}, {
   3.7711641780522556`*^9, 3.7711642408842087`*^9}, {3.7711642915183535`*^9, 
   3.7711643402656775`*^9}, {3.771164391674837*^9, 3.771164391951583*^9}, {
   3.771164439252557*^9, 3.771164530095812*^9}, {3.771165034904866*^9, 
   3.7711650684121428`*^9}, {3.7711654171237235`*^9, 3.771165423700153*^9}, {
   3.7711654596759453`*^9, 3.7711654606591415`*^9}, {3.7711736629246197`*^9, 
   3.7711736977993374`*^9}, {3.771173804314138*^9, 3.771173845773241*^9}, {
   3.771173909407037*^9, 3.7711739515622873`*^9}, {3.7711739907584496`*^9, 
   3.7711740307026067`*^9}, {3.7711741015411015`*^9, 3.771174123155327*^9}, {
   3.771174167923581*^9, 3.771174285644276*^9}, {3.7711743825806227`*^9, 
   3.771174431741313*^9}, {3.7711744992686834`*^9, 3.771174518969988*^9}, {
   3.7711745965395083`*^9, 3.7711746156254587`*^9}, {3.7711746589017105`*^9, 
   3.7711746986404305`*^9}, {3.771174738564642*^9, 3.771174774495536*^9}, {
   3.771174874027318*^9, 3.7711748875377045`*^9}, {3.771174998730343*^9, 
   3.7711750139207435`*^9}, {3.7711750489470673`*^9, 3.77117509120403*^9}, {
   3.771175236899336*^9, 3.7711752598928337`*^9}, {3.771176265623417*^9, 
   3.771176298410709*^9}, {3.7711773988826303`*^9, 3.7711774269329934`*^9}, {
   3.7711776018294754`*^9, 3.771177666619278*^9}, 3.771177714530709*^9, {
   3.771177770532821*^9, 3.7711778431256547`*^9}, {3.771177886515611*^9, 
   3.771177950894408*^9}, {3.7711795534029803`*^9, 3.7711795782255764`*^9}, {
   3.7711796096365137`*^9, 3.771179631927981*^9}, {3.771179861069104*^9, 
   3.771179918412449*^9}, {3.771180245424492*^9, 3.7711802924507*^9}, {
   3.7711803345630603`*^9, 3.771180336053075*^9}, {3.771180366905555*^9, 
   3.771180474345195*^9}, {3.771180547362878*^9, 3.7711805501644*^9}, {
   3.77118059822683*^9, 3.771180635369484*^9}, {3.771180990481336*^9, 
   3.7711809912632437`*^9}, {3.771181121705347*^9, 3.7711811639792876`*^9}, {
   3.7717209885668306`*^9, 3.7717210015459886`*^9}, 3.7717211004880753`*^9, {
   3.7717212596052074`*^9, 3.7717212788487234`*^9}, {3.7717213090509715`*^9, 
   3.7717213456357174`*^9}, {3.7717213973485165`*^9, 
   3.7717214055934315`*^9}, {3.771721455035186*^9, 3.7717214792864866`*^9}, {
   3.7717215472968364`*^9, 3.7717216448388147`*^9}, 3.7717216888642244`*^9, {
   3.7717217316553297`*^9, 3.771721750911318*^9}, {3.7717217924438024`*^9, 
   3.771721893378087*^9}, {3.771721938936637*^9, 3.7717219394604807`*^9}, {
   3.7717219785369225`*^9, 3.771721981307703*^9}, {3.7717220189853945`*^9, 
   3.7717220903218412`*^9}, {3.771722196801586*^9, 3.7717222397044764`*^9}, {
   3.771722275268067*^9, 3.7717222986476603`*^9}, {3.771722337647439*^9, 
   3.7717223691936264`*^9}, {3.771722419157722*^9, 3.7717224325967264`*^9}, {
   3.7717225928506403`*^9, 3.771722802964443*^9}, {3.7717228370639515`*^9, 
   3.7717228378984857`*^9}, {3.771722873751786*^9, 3.771722903717698*^9}, 
   3.7717229339640713`*^9, {3.7717229672197857`*^9, 3.7717230196761703`*^9}, {
   3.7717230719441633`*^9, 3.7717231152102194`*^9}, {3.771766072093564*^9, 
   3.7717660726380568`*^9}, {3.7717661247384806`*^9, 
   3.7717661949358697`*^9}, {3.771766230818516*^9, 3.7717662681848936`*^9}, {
   3.7717663003665085`*^9, 3.7717665042390785`*^9}, 3.7717680645536356`*^9, {
   3.771768308425558*^9, 3.7717684019080176`*^9}, {3.7717684460698752`*^9, 
   3.7717684519242105`*^9}, {3.7717702253797283`*^9, 3.771770236155891*^9}, {
   3.7717702793533125`*^9, 3.771770389285223*^9}, {3.7717704557933025`*^9, 
   3.7717704677293696`*^9}, {3.771770498025324*^9, 3.7717706488538327`*^9}, {
   3.7717706911157675`*^9, 3.7717709492293415`*^9}, 3.7717710472341547`*^9, {
   3.771771170116424*^9, 3.771771254852736*^9}, 3.771771342419478*^9, {
   3.7717713775794177`*^9, 3.7717713861255555`*^9}, {3.7717714396393957`*^9, 
   3.7717714463783746`*^9}, {3.771771524116404*^9, 3.771771530243015*^9}, {
   3.7717716588549523`*^9, 3.771771731039857*^9}, 3.7717717877102537`*^9, {
   3.771771990548624*^9, 3.771771998010661*^9}, {3.771772047955048*^9, 
   3.771772081274923*^9}, {3.771772112667932*^9, 3.7717722517299223`*^9}, {
   3.7717723186668444`*^9, 3.771772381827874*^9}, {3.771772434166862*^9, 
   3.771772437107983*^9}, {3.771772482006629*^9, 3.771772584607744*^9}, {
   3.7717726804952297`*^9, 3.7717727614337025`*^9}, {3.7717728177490454`*^9, 
   3.7717728327668734`*^9}, {3.771772920341234*^9, 3.771772964824232*^9}, {
   3.7717733129950914`*^9, 3.771773313510723*^9}, {3.7717734096973925`*^9, 
   3.771773444071446*^9}, {3.7717736040973363`*^9, 3.771773620611158*^9}, {
   3.7717736597285175`*^9, 3.771773661701236*^9}, {3.7717737529790497`*^9, 
   3.771773774395756*^9}, {3.771773850781057*^9, 3.7717738543794427`*^9}, {
   3.771773889652073*^9, 3.771773921207651*^9}, {3.7717739674599175`*^9, 
   3.771774279747503*^9}, {3.771774348922434*^9, 3.7717743942551594`*^9}, {
   3.7717744357062716`*^9, 3.771774556880105*^9}, {3.7717745986932592`*^9, 
   3.7717745987879953`*^9}, {3.7717746367564354`*^9, 
   3.7717746615490985`*^9}, {3.7717747433512716`*^9, 
   3.7717747520619564`*^9}, {3.7717748071397657`*^9, 
   3.7717749026558094`*^9}, {3.7717749349015446`*^9, 3.771774937913497*^9}, {
   3.771774969629607*^9, 3.771775037353463*^9}, {3.7717750736852694`*^9, 
   3.7717752673970647`*^9}, 3.771775312184245*^9, {3.771775373194027*^9, 
   3.771775434809196*^9}, 3.7717754680073843`*^9, {3.7717755242299876`*^9, 
   3.7717755319682794`*^9}, {3.771775612696311*^9, 3.7717756550579863`*^9}, {
   3.771775710140292*^9, 3.771775742693221*^9}, {3.771775793949087*^9, 
   3.7717758105187664`*^9}, {3.7717759454976654`*^9, 3.77177595467511*^9}, {
   3.7717760035035005`*^9, 3.7717760444678984`*^9}, {3.7717761142741632`*^9, 
   3.7717761220852666`*^9}, {3.7717761525886564`*^9, 
   3.7717761605124617`*^9}, {3.771776215102418*^9, 3.7717762315065346`*^9}, {
   3.771776267471322*^9, 3.771776295950137*^9}, {3.771776384971998*^9, 
   3.7717764622422743`*^9}, {3.771776540291486*^9, 3.771776618031593*^9}, {
   3.7717766656086063`*^9, 3.7717766709539213`*^9}, {3.771776710568536*^9, 
   3.7717767338209276`*^9}, {3.7717770646032248`*^9, 
   3.7717770687312517`*^9}, {3.771777107167463*^9, 3.7717771926212187`*^9}, {
   3.771777256027277*^9, 3.771777393143814*^9}, {3.7717774632923517`*^9, 
   3.7717774692356853`*^9}, {3.7717775060585823`*^9, 3.771777551931699*^9}, {
   3.771778172081543*^9, 3.7717781926483727`*^9}, {3.771778388861665*^9, 
   3.7717784249085283`*^9}, {3.771778547016822*^9, 3.771778556947673*^9}, {
   3.771778809973774*^9, 3.7717789008247476`*^9}, {3.7717789618165407`*^9, 
   3.7717789656822357`*^9}, {3.7717790127723465`*^9, 
   3.7717791411268735`*^9}, {3.771779206679206*^9, 3.7717792912606163`*^9}, {
   3.7717793285090876`*^9, 3.7717793476047707`*^9}, {3.771779382367197*^9, 
   3.7717793867556906`*^9}, {3.7717794292030783`*^9, 3.7717794516839604`*^9}, 
   3.7717794886581907`*^9, {3.771779530991284*^9, 3.771779545868636*^9}, 
   3.771779581230404*^9, {3.771779934521035*^9, 3.771779935219823*^9}, {
   3.771780104260818*^9, 3.7717801303984594`*^9}, {3.771780210682558*^9, 
   3.771780238149572*^9}, {3.7717802876772013`*^9, 3.771780288145714*^9}, {
   3.7717803459151087`*^9, 3.771780349329745*^9}, {3.7717803832590036`*^9, 
   3.771780416058573*^9}, {3.7717804907161665`*^9, 3.771780605042952*^9}, {
   3.771781454022606*^9, 3.771781476802574*^9}, {3.7717815090830636`*^9, 
   3.7717815262136564`*^9}, {3.7717816549426966`*^9, 3.77178186415996*^9}, 
   3.7717819027257547`*^9, {3.771781987160338*^9, 3.7717820526540265`*^9}, {
   3.771782090242493*^9, 3.7717821107801075`*^9}, 3.771782170359684*^9, {
   3.771782966742346*^9, 3.771782989849429*^9}, {3.7717830206574945`*^9, 
   3.7717830249850183`*^9}, {3.771783063615952*^9, 3.771783134216172*^9}, {
   3.771783170833604*^9, 3.77178326208459*^9}, {3.771783300216871*^9, 
   3.7717833486826367`*^9}, {3.7717834339914107`*^9, 
   3.7717835065211306`*^9}, {3.771783542474588*^9, 3.7717836002352295`*^9}, {
   3.7717848185085125`*^9, 3.7717849338512244`*^9}, {3.7717849819312677`*^9, 
   3.7717850615615273`*^9}, 3.7718430591136894`*^9, {3.7718435091620817`*^9, 
   3.771843549893716*^9}, {3.771843634119723*^9, 3.771843639760494*^9}, {
   3.77184374155062*^9, 3.771843821243684*^9}, {3.7718438885772552`*^9, 
   3.771843988957179*^9}, {3.771844031544161*^9, 3.7718440730039515`*^9}, {
   3.7718444148681383`*^9, 3.7718444519734383`*^9}, {3.772222222211233*^9, 
   3.7722222496671057`*^9}, {3.772222377556158*^9, 3.7722223851595025`*^9}, {
   3.7722224766199636`*^9, 3.7722224991491923`*^9}, {3.772222555282419*^9, 
   3.7722225717033305`*^9}, {3.7722226593292294`*^9, 
   3.7722227210248623`*^9}, {3.7722227585589466`*^9, 3.772222763118655*^9}, {
   3.772222933154745*^9, 3.7722229858039756`*^9}, {3.7722230563629203`*^9, 
   3.7722230679465165`*^9}, 3.7722232455142927`*^9, {3.7722233080355387`*^9, 
   3.7722233084674754`*^9}, {3.7722233944044523`*^9, 3.772223457789608*^9}, {
   3.772223623141776*^9, 3.7722237063580694`*^9}, {3.7722237555708075`*^9, 
   3.77222403891013*^9}, 3.7722240987224016`*^9, {3.772224211326527*^9, 
   3.772224291150588*^9}, {3.7722244346639414`*^9, 3.7722245920096207`*^9}, {
   3.772224628768917*^9, 3.7722246703689365`*^9}, {3.772224968769663*^9, 
   3.7722250639259567`*^9}, {3.772225112793181*^9, 3.772225118126031*^9}, {
   3.7729826570664005`*^9, 3.772982660276868*^9}, {3.772982744457868*^9, 
   3.7729827603033247`*^9}, {3.7729828409312925`*^9, 3.772982872890046*^9}, {
   3.772982908253995*^9, 3.772982924253652*^9}, {3.7729830620389185`*^9, 
   3.7729830950933027`*^9}, {3.772983153118291*^9, 3.7729832259715176`*^9}, {
   3.772983318280574*^9, 3.7729833702372017`*^9}, {3.7729834957689333`*^9, 
   3.772983593299168*^9}, {3.772983660138401*^9, 3.7729837144135013`*^9}, {
   3.772983750964073*^9, 3.772983754362024*^9}, {3.772983977605569*^9, 
   3.772984011721416*^9}, {3.772984055191042*^9, 3.772984106767966*^9}, {
   3.772984150240754*^9, 3.7729842188351183`*^9}, {3.7729842597717104`*^9, 
   3.7729842601728606`*^9}, {3.772984357474382*^9, 3.7729843614391613`*^9}, {
   3.772984444106245*^9, 3.772984490210059*^9}, {3.772984537979461*^9, 
   3.7729846477950983`*^9}, {3.772984730266384*^9, 3.7729847306940875`*^9}, {
   3.77298480229723*^9, 3.7729848131043644`*^9}, {3.772985020568286*^9, 
   3.772985033905122*^9}, 3.77298521610103*^9, {3.7729852551068735`*^9, 
   3.772985280290857*^9}, {3.772985416325039*^9, 3.7729854200488567`*^9}, {
   3.7729854749612746`*^9, 3.772985506278455*^9}, {3.7729855622935143`*^9, 
   3.772985566478223*^9}, {3.7729856171901226`*^9, 3.772985724145059*^9}, {
   3.7729857939966974`*^9, 3.772985828109915*^9}, {3.7729858640038795`*^9, 
   3.7729858685458384`*^9}, {3.7729861401176653`*^9, 
   3.7729861630321536`*^9}, {3.772986327976966*^9, 3.77298633724477*^9}, {
   3.7729866795899105`*^9, 3.7729867351320906`*^9}, {3.772986771177904*^9, 
   3.772986879971044*^9}, {3.772987011271657*^9, 3.7729870680257998`*^9}, {
   3.7729873291853514`*^9, 3.772987351208406*^9}, {3.7729874488281684`*^9, 
   3.7729874515509367`*^9}, {3.77298750013501*^9, 3.772987624965296*^9}, {
   3.7729876962218027`*^9, 3.7729877660893006`*^9}, {3.7729878460313044`*^9, 
   3.7729878667219477`*^9}, {3.772987901093096*^9, 3.7729879781723037`*^9}, {
   3.7729880092413483`*^9, 3.772988020611952*^9}, {3.772988084066317*^9, 
   3.772988084444307*^9}, 3.7729884046881866`*^9, {3.772988453416918*^9, 
   3.7729885508120794`*^9}, {3.7729885813074484`*^9, 3.772988603969832*^9}, {
   3.7729886598783703`*^9, 3.7729886848645735`*^9}, {3.772988796121149*^9, 
   3.772988903609456*^9}, {3.7729889542507734`*^9, 3.7729889565306463`*^9}, {
   3.772989054796949*^9, 3.7729890625013833`*^9}, {3.772989123355667*^9, 
   3.7729892102168136`*^9}, {3.772989265239685*^9, 3.7729893457959633`*^9}, {
   3.7729893841982975`*^9, 3.772989422143525*^9}, {3.772989470778473*^9, 
   3.7729897860029764`*^9}, {3.7729898584482718`*^9, 
   3.7729898613266115`*^9}, {3.772992448446904*^9, 3.772992451699212*^9}, {
   3.772992498550606*^9, 3.7729925478833046`*^9}, {3.7729926899648*^9, 
   3.7729927134533005`*^9}, {3.772992803782789*^9, 3.7729929499828625`*^9}, {
   3.7729929827723036`*^9, 3.7729931240504103`*^9}, {3.772993264413478*^9, 
   3.7729932755464325`*^9}, {3.7729933521400647`*^9, 3.772993353615617*^9}, {
   3.7729934004761467`*^9, 3.772993402625718*^9}, {3.772993577076645*^9, 
   3.7729940102296486`*^9}, {3.772994102507104*^9, 3.77299441584713*^9}, {
   3.772994448023002*^9, 3.772994525121313*^9}, {3.7729945758002577`*^9, 
   3.77299458695789*^9}, {3.7729947766989613`*^9, 3.772994887850574*^9}, {
   3.7729951934630113`*^9, 3.7729952139231997`*^9}, {3.7729952793568645`*^9, 
   3.772995353572321*^9}, {3.7729954609023533`*^9, 3.7729954613935223`*^9}, {
   3.772995497562749*^9, 3.772995683011133*^9}, 3.7729957865124035`*^9, {
   3.772995965097602*^9, 3.7729959768190594`*^9}, {3.772996011392954*^9, 
   3.7729960126085997`*^9}, {3.7729961331835666`*^9, 3.772996154161497*^9}, {
   3.7729962844377546`*^9, 3.772996290161358*^9}, {3.772996328199106*^9, 
   3.772996333979458*^9}, {3.7729963832153883`*^9, 3.7729963895296354`*^9}, {
   3.772996592608039*^9, 3.7729966172173615`*^9}, {3.7729966772810774`*^9, 
   3.7729966810422373`*^9}, {3.772996755190273*^9, 3.7729967784594955`*^9}, {
   3.7729968502546315`*^9, 3.772996883266537*^9}, {3.772996969144839*^9, 
   3.7729969822647333`*^9}, {3.7729970184639606`*^9, 
   3.7729970665553956`*^9}, {3.7729971694553423`*^9, 
   3.7729971768864784`*^9}, {3.772997216352937*^9, 3.7729972211640754`*^9}, {
   3.7729975571698647`*^9, 3.7729975713569374`*^9}, {3.7729977571541977`*^9, 
   3.7729980275718718`*^9}, {3.772998065038679*^9, 3.7729981161909804`*^9}, {
   3.772998151598321*^9, 3.7729981706244135`*^9}, 3.7729985632155075`*^9, {
   3.7729986834111786`*^9, 3.772998689235609*^9}, {3.772998731079715*^9, 
   3.772998829133254*^9}, {3.772998890763912*^9, 3.772998972563247*^9}, {
   3.772999024978113*^9, 3.772999052466628*^9}, {3.772999083615362*^9, 
   3.7729991004493217`*^9}, {3.772999149152155*^9, 3.7729991667241783`*^9}, {
   3.772999204100255*^9, 3.7729992206869197`*^9}, {3.772999318999116*^9, 
   3.7729994216315556`*^9}, {3.7729995246721272`*^9, 3.772999564925482*^9}, {
   3.7729996793386173`*^9, 3.7729996961915965`*^9}, {3.7735122843247833`*^9, 
   3.773512508556245*^9}, {3.773512801036869*^9, 3.77351282963208*^9}, {
   3.773512872707827*^9, 3.773512882209325*^9}, {3.773512937227617*^9, 
   3.773512981850604*^9}, 3.7735130430924425`*^9, {3.7735131469499454`*^9, 
   3.7735131688749456`*^9}, {3.7735132216520696`*^9, 
   3.7735132228234425`*^9}, {3.773513423332423*^9, 3.773513553741957*^9}, {
   3.7735135911622505`*^9, 3.773513623812614*^9}, {3.7735137027449493`*^9, 
   3.773513715492731*^9}, {3.7735137545615125`*^9, 3.773513754992859*^9}, {
   3.7735138055101013`*^9, 3.7735138319127216`*^9}, {3.773513871842105*^9, 
   3.773513883861725*^9}, {3.773513926261934*^9, 3.773513930130884*^9}, {
   3.7735141600461397`*^9, 3.773514174502158*^9}, 3.773514207166308*^9, {
   3.7735142413770514`*^9, 3.7735142691622176`*^9}, {3.773514343793108*^9, 
   3.7735143788708677`*^9}, {3.7735144979313602`*^9, 
   3.7735146013353453`*^9}, {3.773514636794487*^9, 3.773514696103179*^9}, {
   3.7735147327128477`*^9, 3.773514770303469*^9}, {3.7735148169303117`*^9, 
   3.7735148612356253`*^9}, 3.7735148931802993`*^9, {3.7735149315741215`*^9, 
   3.773514942803397*^9}, {3.7735150254877653`*^9, 3.773515032885531*^9}, {
   3.7735151799733286`*^9, 3.773515369622672*^9}, {3.7735154377635098`*^9, 
   3.7735154388334513`*^9}, {3.7735154716829925`*^9, 3.773515500461342*^9}, {
   3.773515533243018*^9, 3.7735155413888273`*^9}, 3.7735157061538386`*^9, {
   3.7735157460487957`*^9, 3.7735159017473965`*^9}, {3.7735173231970377`*^9, 
   3.773517330855989*^9}, 3.773517422150838*^9, {3.773517577560104*^9, 
   3.7735176049255743`*^9}, {3.7735966096409855`*^9, 
   3.7735966100599003`*^9}, {3.7735969502845182`*^9, 3.773596963220892*^9}, 
   3.7735969994268436`*^9, 3.7735970756927304`*^9, 3.773597115948308*^9, 
   3.773597499069642*^9, {3.7735978557709503`*^9, 3.7735978629785414`*^9}, {
   3.7735978983788247`*^9, 3.77359794469258*^9}, {3.773598114574482*^9, 
   3.7735981890738955`*^9}, {3.7735982594134026`*^9, 
   3.7735982954526787`*^9}, {3.7735984364359536`*^9, 
   3.7735984570417533`*^9}, {3.7735984892495604`*^9, 3.773598503740632*^9}, {
   3.7735985712155304`*^9, 3.773598594563278*^9}, {3.773598635132845*^9, 
   3.7735986367127886`*^9}, {3.7735986894249787`*^9, 
   3.7735987118440313`*^9}, {3.773599035041662*^9, 3.7735991132184715`*^9}, {
   3.7735991551856747`*^9, 3.773599185839431*^9}, {3.773599225087407*^9, 
   3.7735994480957804`*^9}, {3.7735994896359076`*^9, 3.77359962320459*^9}, {
   3.773600003268675*^9, 3.7736001498903503`*^9}, {3.7736001841698637`*^9, 
   3.773600337371895*^9}, 3.7736003905480075`*^9, {3.7736004316042385`*^9, 
   3.773600549482901*^9}, {3.7736005903686666`*^9, 3.7736005929608345`*^9}, {
   3.7736007407315984`*^9, 3.773600768513531*^9}, {3.7736008483539076`*^9, 
   3.7736008536048584`*^9}, {3.773600903788703*^9, 3.773600921733729*^9}, {
   3.77360097014531*^9, 3.773600995188361*^9}, {3.7736010314544163`*^9, 
   3.773601052167035*^9}, {3.7736010941488056`*^9, 3.7736011297426553`*^9}, {
   3.7736012548432164`*^9, 3.773601282485329*^9}, {3.7736014750285864`*^9, 
   3.7736014875281734`*^9}, {3.7736015340518007`*^9, 3.773601667084158*^9}, {
   3.7736017234983444`*^9, 3.773601911350154*^9}, {3.7736019522528067`*^9, 
   3.7736019996481037`*^9}, {3.773602082742964*^9, 3.7736020848932176`*^9}, {
   3.7736236026521835`*^9, 3.7736236057481966`*^9}, {3.7736236945105944`*^9, 
   3.7736236992631216`*^9}, {3.773624471085742*^9, 3.7736244756035433`*^9}, {
   3.773624574582288*^9, 3.7736245754371233`*^9}, 3.7736247112242575`*^9, {
   3.773624742048067*^9, 3.773624758444103*^9}, {3.7736248036444798`*^9, 
   3.7736248039442596`*^9}, {3.7736248743319435`*^9, 
   3.7736249531138353`*^9}, {3.773625022782423*^9, 3.773625128648221*^9}, {
   3.7736251785032115`*^9, 3.7736251827591076`*^9}, {3.7736252567852955`*^9, 
   3.773625332123391*^9}, {3.773625405813881*^9, 3.773625407252941*^9}, {
   3.773625453425016*^9, 3.7736254628003235`*^9}, 3.7736255489023647`*^9, {
   3.773625658689138*^9, 3.7736256669445105`*^9}, {3.7736257048597093`*^9, 
   3.7736257434890013`*^9}, {3.7736257756924305`*^9, 3.773625827396844*^9}, {
   3.773625880731428*^9, 3.7736258846517754`*^9}, {3.773625939170574*^9, 
   3.773625946422734*^9}, {3.773626028313917*^9, 3.7736260671946063`*^9}, {
   3.7736261338188944`*^9, 3.773626170019282*^9}, {3.773626216568218*^9, 
   3.773626222436058*^9}, {3.7736262726604443`*^9, 3.7736262756933036`*^9}, {
   3.7736263070067725`*^9, 3.7736264111026917`*^9}, 3.773626477675132*^9, {
   3.773626558345924*^9, 3.773626670011427*^9}, {3.773626701994182*^9, 
   3.773626705215005*^9}, {3.7736267537482204`*^9, 3.7736268518132806`*^9}, {
   3.773626966879449*^9, 3.7736269732307525`*^9}, {3.773627078703632*^9, 
   3.773627091871297*^9}, {3.773627150155486*^9, 3.7736271837556305`*^9}, {
   3.773627245957675*^9, 3.7736272887115393`*^9}, {3.773627340981668*^9, 
   3.7736273451742806`*^9}, {3.7736273756367097`*^9, 
   3.7736274133366876`*^9}, {3.77362750076512*^9, 3.7736275419013844`*^9}, {
   3.773627611511733*^9, 3.773627688346815*^9}, {3.773627749965709*^9, 
   3.7736277738471613`*^9}, {3.7736278287425566`*^9, 
   3.7736278289399776`*^9}, {3.7736278604769697`*^9, 3.7736278631050615`*^9}, 
   3.7736278972817693`*^9, {3.7736279788330317`*^9, 3.7736280401317353`*^9}, {
   3.773628088563368*^9, 3.773628089636238*^9}, {3.773628134152078*^9, 
   3.773628153579091*^9}, {3.7736282065069447`*^9, 3.7736282825887594`*^9}, {
   3.773628458654455*^9, 3.773628496211763*^9}, {3.7736285849504633`*^9, 
   3.7736286221380816`*^9}, {3.7736286535317297`*^9, 3.773628667487214*^9}, {
   3.7736286987475047`*^9, 3.7736287366336374`*^9}, {3.7736288071501365`*^9, 
   3.7736288168295083`*^9}, {3.773628848215897*^9, 3.7736290519416075`*^9}, {
   3.773629092596534*^9, 3.773629261255027*^9}, {3.773629293083912*^9, 
   3.7736292972188687`*^9}, {3.773629332032277*^9, 3.7736294478740115`*^9}, 
   3.7736294890827417`*^9, {3.7736295284266376`*^9, 3.773629671267432*^9}, {
   3.77362978452543*^9, 3.773630028262125*^9}, 3.7736300679039307`*^9, {
   3.7736301192843556`*^9, 3.773630301662487*^9}, {3.7736303394465857`*^9, 
   3.773630374157959*^9}, {3.773630407044113*^9, 3.773630459676136*^9}, {
   3.7736305126178045`*^9, 3.7736307228735456`*^9}, {3.773630780504044*^9, 
   3.773630931729328*^9}, 3.77363097841011*^9, 3.7736310277060757`*^9, {
   3.7736310586154904`*^9, 3.773631070739331*^9}, {3.773631132406032*^9, 
   3.77363118627903*^9}, {3.7736312443965225`*^9, 3.7736313865708714`*^9}, {
   3.7736314378382397`*^9, 3.77363152534121*^9}, {3.773631593818036*^9, 
   3.7736316219783063`*^9}, {3.7736317132712946`*^9, 3.773631764672974*^9}, {
   3.7736318374303617`*^9, 3.7736318391798725`*^9}, {3.7736319114264145`*^9, 
   3.773631929999216*^9}, {3.773631995476077*^9, 3.773632058606032*^9}, {
   3.773632116278178*^9, 3.773632176775465*^9}, {3.7736322188023524`*^9, 
   3.7736322313000717`*^9}, 3.7736323791443634`*^9, {3.7736324614038815`*^9, 
   3.773632629908716*^9}, {3.7736327249149027`*^9, 3.7736327293398495`*^9}, {
   3.7736327754289136`*^9, 3.773632996142457*^9}, {3.773633061076173*^9, 
   3.773633103121608*^9}, {3.773633164921685*^9, 3.77363316940254*^9}, {
   3.773633254535094*^9, 3.7736333344823356`*^9}, {3.773633402262067*^9, 
   3.7736335046176353`*^9}, {3.7736335412606726`*^9, 
   3.7736335423370285`*^9}, {3.773633572427106*^9, 3.7736337906264505`*^9}, {
   3.7736339649342813`*^9, 3.773634143142989*^9}, {3.773634175544808*^9, 
   3.773634267422493*^9}, {3.773634313472867*^9, 3.7736343379033747`*^9}, {
   3.773634375563027*^9, 3.773634487129961*^9}, {3.7736345314033813`*^9, 
   3.7736345323446255`*^9}, {3.773634566763712*^9, 3.7736346222278337`*^9}, {
   3.773634674361082*^9, 3.7736346811234813`*^9}, {3.773634788424173*^9, 
   3.7736348056057825`*^9}, 3.773634862192534*^9, {3.77363491216332*^9, 
   3.773634913058913*^9}, {3.7736349431874504`*^9, 3.77363494349338*^9}, {
   3.773635479213465*^9, 3.7736354989411077`*^9}, {3.7736355292819653`*^9, 
   3.7736355420240517`*^9}, {3.773657171829946*^9, 3.773657374774455*^9}, {
   3.7736583245653834`*^9, 3.7736583480097113`*^9}, {3.773658565755604*^9, 
   3.773658610821143*^9}, {3.7736586533534384`*^9, 3.7736586695840473`*^9}, {
   3.773658798002729*^9, 3.7736587987507296`*^9}, {3.773658831274781*^9, 
   3.7736588933279047`*^9}, {3.7736589566994934`*^9, 
   3.7736589592007923`*^9}, {3.77365919721251*^9, 3.773659200299268*^9}, {
   3.7741879797732906`*^9, 3.774188084229123*^9}, {3.7741881275005217`*^9, 
   3.774188155938179*^9}, {3.7741882178788233`*^9, 3.7741882253694224`*^9}, {
   3.774188288279574*^9, 3.7741883482215056`*^9}, {3.7741884077369466`*^9, 
   3.7741884381381826`*^9}, {3.774188517182496*^9, 3.774188534353531*^9}, {
   3.774188592904746*^9, 3.774188974402151*^9}, {3.7741890118898478`*^9, 
   3.7741895385868597`*^9}, {3.7741895787574644`*^9, 
   3.7741904691816883`*^9}, {3.7741909627240486`*^9, 
   3.7741911371232333`*^9}, {3.7741911757169704`*^9, 
   3.7741912577669053`*^9}, {3.774191310661048*^9, 3.7741914319569693`*^9}, {
   3.774191480407343*^9, 3.774191555704892*^9}, {3.7741916457818537`*^9, 
   3.7741916805397596`*^9}, {3.774191721210414*^9, 3.774191753525031*^9}, {
   3.774191785855307*^9, 3.7741917863477497`*^9}, {3.7741918180199823`*^9, 
   3.7741918296430864`*^9}, {3.7741918614200773`*^9, 
   3.7741919605717635`*^9}, {3.774192006586402*^9, 3.774192025090127*^9}, {
   3.7741920596853185`*^9, 3.774192071527294*^9}, 3.774192109590554*^9, {
   3.774192375975733*^9, 3.774192382218155*^9}, {3.774192415023388*^9, 
   3.774192416542429*^9}},
 CellLabel->"In[22]:=",
 CellID->52884272,ExpressionUUID->"fcb08c69-7902-45d7-b5e2-0258f440fe1a"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`m$$ = 
    40, $CellContext`pts$$ = {{0.5, 5}, {-4.3, 
     2.65}, {-5, -0.169}, {-5, -3.}, {3.5, -5}, {0, -2.5}, {1.25, 0}, {
     4.25, 0}, {0.5, 1.15}, {-1.15, 0.75}, {1.22, -4.19}, {-1.5, 1.5}, {-1.83,
      0.47}}, $CellContext`s$$ = 1, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`s$$], 1, "Vertices"}, 1, 
      Dynamic[$CellContext`m$$ + 2], 1}, {{
       Hold[$CellContext`m$$], 1}}, {{
       Hold[$CellContext`pts$$], {{0.5, 5}, {-4.3, 
        2.65}, {-5, -0.169}, {-5, -3.}, {3.5, -5}, {0, -2.5}, {1.25, 0}, {
        4.25, 0}, {0.5, 1.15}, {-1.15, 0.75}, {1.22, -4.19}, {-1.5, 
        1.5}, {-1.83, 0.47}}}, {-6, -6}, {6, 6}}}, Typeset`size$$ = {
    576., {285., 291.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`s$1283949$$ = 
    0, $CellContext`pts$1283950$$ = {0, 0}}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`m$$ = 
        1, $CellContext`pts$$ = {{0.5, 5}, {-4.3, 
          2.65}, {-5, -0.169}, {-5, -3.}, {3.5, -5}, {0, -2.5}, {1.25, 0}, {
          4.25, 0}, {0.5, 1.15}, {-1.15, 0.75}, {1.22, -4.19}, {-1.5, 
          1.5}, {-1.83, 0.47}}, $CellContext`s$$ = 1}, "ControllerVariables" :> {
        Hold[$CellContext`s$$, $CellContext`s$1283949$$, 0], 
        Hold[$CellContext`pts$$, $CellContext`pts$1283950$$, {0, 0}]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`p$ = Part[$CellContext`pts$$, 13], $CellContext`o$ = {
           Part[$CellContext`pts$$, 11], 
           Part[$CellContext`pts$$, 12]}, $CellContext`workspace$ = (
           6 (2 0.707107)) 
          CirclePoints[
           4], $CellContext`listofAllLines$, $CellContext`sortedList$, \
$CellContext`sortedText$, $CellContext`infiniteLine$, $CellContext`i$, \
$CellContext`gLine$, $CellContext`lvLine$, $CellContext`giList$, \
$CellContext`giPoint$, $CellContext`giLine$, $CellContext`a$, \
$CellContext`b$, $CellContext`c$, $CellContext`bc$, $CellContext`ba$, \
$CellContext`pb$, $CellContext`abcList$, $CellContext`JlineList$ = {}, \
$CellContext`pbaAngle$, $CellContext`pbcAngle$, $CellContext`bcNotVisInt$, \
$CellContext`abNotVisInt$, $CellContext`abNotGlaInt$, \
$CellContext`bcVisiInt$, $CellContext`startJlistInt$, $CellContext`tb$, \
$CellContext`prevB$, $CellContext`postC$, $CellContext`postB$, \
$CellContext`postA$, $CellContext`prevC$, $CellContext`prevA$, \
$CellContext`pPostAB$, $CellContext`pPostBC$, $CellContext`pbaColl$, \
$CellContext`pbcColl$, $CellContext`pbAngle$, $CellContext`fvPoint$, \
$CellContext`pprevbAngle$, $CellContext`index$, $CellContext`oldP$ = {}, \
$CellContext`jList$ = {}, $CellContext`visibleList$ = {}, \
$CellContext`lvLineList$ = {}, $CellContext`visibleSList$ = {}, \
$CellContext`wi$ = False, $CellContext`wip$ = False, $CellContext`gFlag$ = 
         False, $CellContext`complexPoly$ = 
         1.5 Reverse[{{-2, -3.5}, {-2, -2}, {-3.5, -2}, {-3.5, 0}, {-1.5, 
              0}, {-1.5, 0.5}, {-3.5, 0.5}, {-3.5, 3.5}, {-1.5, 
             3.5}, {-1.5, 2}, {0.5, 2}, {0.5, 2.5}, {-1, 2.5}, {-1, 3.5}, {
             3.5, 3.5}, {3.5, 2.5}, {1.5, 2.5}, {1.5, 2}, {3.5, 2}, {
             3.5, -0.5}, {1.5, -0.5}, {1.5, -1.5}, {2, -1.5}, {2, -1}, {
             3.5, -1}, {3.5, -3.5}, {2, -3.5}, {2, -3}, {1.5, -3}, {
             1.5, -3.5}, {-0.5, -3.5}, {-0.5, -1}, {0, -1}, {
             0, -0.5}, {-1, -0.5}, {-1, -3.5}}]}, 
        If[$CellContext`oldP$ != $CellContext`p$, Table[
            If[
             Or[
             Part[$CellContext`p$, $CellContext`j] > 6, 
              Part[$CellContext`p$, $CellContext`j] < -6], 
             If[
             Part[$CellContext`p$, $CellContext`j] > 6, 
              Part[$CellContext`p$, $CellContext`j] = 6, 
              Part[$CellContext`p$, $CellContext`j] = -6]], {$CellContext`j, 
             1, 2, 1}]; If[
            Apply[Or, 
             Map[($CellContext`index$ = Flatten[
                 
                 Position[$CellContext`complexPoly$, #]]; $CellContext`p$ == \
#)& , $CellContext`complexPoly$]], $CellContext`p$ = $CellContext`p$ - 
             0.00001 (2 Part[$CellContext`complexPoly$, 1] - Part[
               RotateLeft[$CellContext`complexPoly$, $CellContext`index$ - 2],
                1] - Part[
               RotateLeft[$CellContext`complexPoly$, $CellContext`index$], 
               1])]; Map[If[
             $CellContext`pointOnSegmentQ[#, $CellContext`p$], \
$CellContext`p$ = $CellContext`p$ - 0.00001 $CellContext`normalVector[#]]& , 
            $CellContext`lineList[$CellContext`complexPoly$]]; If[
            $CellContext`testpoint[$CellContext`complexPoly$, \
$CellContext`p$], $CellContext`complexPoly$ = 
            Reverse[$CellContext`complexPoly$]]; If[
            $CellContext`testpoint[$CellContext`workspace$, $CellContext`p$], \
$CellContext`workspace$ = 
            Reverse[$CellContext`workspace$]]; $CellContext`listofAllLines$ = 
           Join[
             $CellContext`lineList[$CellContext`workspace$], 
             $CellContext`lineList[$CellContext`complexPoly$]]; \
$CellContext`infiniteLine$ = {$CellContext`p$, {0.1, 0} + {
               Max[
                Map[Part[#, 1]& , 
                 Join[$CellContext`workspace$, $CellContext`complexPoly$]]], 
               Part[$CellContext`p$, 2]}}; $CellContext`sortedList$ = Sort[
             Join[
              $CellContext`vertexList[$CellContext`workspace$], 
              $CellContext`vertexList[$CellContext`complexPoly$]], \
$CellContext`angleSortCond[$CellContext`p$, #, #2]& ]; Map[If[
             $CellContext`SegmentIntersectionQ[{$CellContext`infiniteLine$, \
#}], 
             AppendTo[$CellContext`jList$, 
              
              Reverse[#]]]& , $CellContext`listofAllLines$]; \
$CellContext`jList$ = 
           Sort[$CellContext`jList$, \
$CellContext`distSortCond[$CellContext`infiniteLine$, #, #2, $CellContext`p$]& \
]; AppendTo[$CellContext`JlineList$, $CellContext`jList$]; 
          AppendTo[$CellContext`JlineList$, $CellContext`jList$]; \
$CellContext`lvLine$ = 
           First[$CellContext`jList$]; $CellContext`fvPoint$ = \
$CellContext`LineIntersectionPoint[{$CellContext`lvLine$, \
$CellContext`infiniteLine$}]; 
          AppendTo[$CellContext`visibleSList$, {$CellContext`p$, \
$CellContext`fvPoint$}]; Table[
            If[
             $CellContext`SegmentIntersectionQ[{$CellContext`lvLine$, 
               
               Part[$CellContext`jList$, $CellContext`i$]}], \
$CellContext`startJlistInt$ = N[
                $CellContext`LineIntersectionPoint[{$CellContext`lvLine$, 
                  Part[$CellContext`jList$, $CellContext`i$]}]]; If[
               $CellContext`noIntersection[$CellContext`p$, \
$CellContext`startJlistInt$, $CellContext`listofAllLines$], 
               AppendTo[$CellContext`visibleList$, \
$CellContext`startJlistInt$]; 
               If[Part[$CellContext`startJlistInt$, 2] > 
                 Part[$CellContext`p$, 2], $CellContext`lvLine$ = 
                 Part[$CellContext`jList$, $CellContext`i$]]]], \
{$CellContext`i$, 1, 
             Length[$CellContext`jList$]}]; 
          AppendTo[$CellContext`lvLineList$, $CellContext`lvLine$]; \
$CellContext`m$$ = Length[$CellContext`sortedList$]; 
          For[$CellContext`i$ = 1, $CellContext`i$ <= $CellContext`m$$, 
            
            Increment[$CellContext`i$], {$CellContext`a$, $CellContext`b$, \
$CellContext`c$} = Part[$CellContext`sortedList$, $CellContext`i$, 
               Span[
               1, 3]]; {$CellContext`prevA$, $CellContext`prevB$, \
$CellContext`prevC$} = If[$CellContext`i$ != 1, 
               Part[$CellContext`sortedList$, $CellContext`i$ - 1, 
                Span[1, 3]], 
               Part[$CellContext`sortedList$, $CellContext`m$$, 
                Span[
                1, 3]]]; {$CellContext`postA$, $CellContext`postB$, \
$CellContext`postC$} = If[$CellContext`i$ != $CellContext`m$$, 
               Part[$CellContext`sortedList$, $CellContext`i$ + 1, 
                Span[1, 3]], 
               Part[$CellContext`sortedList$, 1, 
                Span[1, 3]]]; $CellContext`tb$ = N[
               If[
                $CellContext`pointOnSegmentQ[{$CellContext`p$, \
$CellContext`postB$}, $CellContext`b$], 
                If[
                 
                 Or[$CellContext`postB$ == $CellContext`a$, \
$CellContext`pbaAngle$ <= Pi/3], $CellContext`b$ + 
                 0.00001 $CellContext`normalVector[{$CellContext`a$, \
$CellContext`p$}], $CellContext`b$ - 
                 0.00001 $CellContext`normalVector[{$CellContext`postB$, \
$CellContext`p$}]], $CellContext`b$]]; $CellContext`abcList$ = \
{$CellContext`a$, $CellContext`tb$, $CellContext`c$}; $CellContext`ba$ = \
{$CellContext`b$, $CellContext`a$}; $CellContext`bc$ = {$CellContext`b$, \
$CellContext`c$}; $CellContext`pb$ = {$CellContext`p$, $CellContext`b$}; \
$CellContext`pbAngle$ = $CellContext`getAngle[{$CellContext`p$, \
$CellContext`b$}]; $CellContext`pprevbAngle$ = \
$CellContext`getAngle[{$CellContext`p$, $CellContext`prevB$}]; \
$CellContext`pbaAngle$ = $CellContext`getClockwiseAngle[$CellContext`p$, \
$CellContext`b$, $CellContext`a$]; $CellContext`pbcAngle$ = \
$CellContext`getClockwiseAngle[$CellContext`p$, $CellContext`b$, \
$CellContext`c$]; $CellContext`pPostAB$ = \
$CellContext`getClockwiseAngle[$CellContext`p$, $CellContext`postB$, \
$CellContext`postA$]; $CellContext`pPostBC$ = \
$CellContext`getClockwiseAngle[$CellContext`p$, $CellContext`postB$, \
$CellContext`postC$]; $CellContext`pbaColl$ = Not[
               $CellContext`collinearQ[{$CellContext`p$, $CellContext`b$, \
$CellContext`a$}]]; $CellContext`pbcColl$ = Not[
               $CellContext`collinearQ[{$CellContext`p$, $CellContext`b$, \
$CellContext`c$}]]; If[
              $CellContext`intersectInteriorQRev2[$CellContext`p$, \
$CellContext`abcList$], $CellContext`wi$ = False, 
              If[
               Or[$CellContext`i$ == 1, 
                Not[
                 $CellContext`pointOnSegmentQ[$CellContext`pb$, \
$CellContext`a$]]], 
               If[
                $CellContext`noIntersection[$CellContext`p$, $CellContext`b$, \
$CellContext`jList$], 
                If[$CellContext`i$ != 1, 
                 
                 If[$CellContext`pbAngle$ != $CellContext`pprevbAngle$, \
$CellContext`wi$ = True, 
                  If[
                   
                   Or[$CellContext`b$ == $CellContext`prevA$, $CellContext`b$ == \
$CellContext`prevC$, $CellContext`b$ == $CellContext`postA$, $CellContext`b$ == \
$CellContext`postC$, $CellContext`gFlag$], $CellContext`wi$ = 
                   True, $CellContext`wi$ = False]], $CellContext`wi$ = 
                 True], $CellContext`wi$ = False], 
               If[$CellContext`wip$, 
                If[
                 $CellContext`noIntersection[$CellContext`b$, \
$CellContext`a$, $CellContext`jList$], $CellContext`wi$ = 
                 True, $CellContext`wi$ = False], $CellContext`wi$ = False]]]; 
            If[$CellContext`wi$, If[
                $CellContext`SegmentIntersectionQ[{$CellContext`lvLine$, \
$CellContext`bc$}], $CellContext`bcVisiInt$ = N[
                   $CellContext`LineIntersectionPoint[{$CellContext`lvLine$, \
$CellContext`bc$}]]; If[
                  $CellContext`noIntersection[$CellContext`p$, \
$CellContext`bcVisiInt$, $CellContext`listofAllLines$], 
                  
                  AppendTo[$CellContext`visibleList$, \
$CellContext`bcVisiInt$]]]; If[
                $CellContext`glancingBlow[$CellContext`p$, \
$CellContext`abcList$], $CellContext`gFlag$ = False, $CellContext`gFlag$ = 
                True]; If[
                And[$CellContext`gFlag$, 
                 Not[
                  $CellContext`pointOnSegmentQ[$CellContext`pb$, \
$CellContext`prevB$]]], $CellContext`gLine$ = \
$CellContext`extendedLine[$CellContext`p$, $CellContext`tb$]; \
$CellContext`giList$ = Sort[
                   DeleteCases[
                    Map[If[
                    Or[
                    $CellContext`SegmentIntersectionQ[{$CellContext`gLine$, \
#}], 
                    And[$CellContext`b$ != Part[#, 2], 
                    $CellContext`pointOnSegmentQ[$CellContext`gLine$, 
                    Part[#, 2]]], 
                    And[$CellContext`b$ != Part[#, 1], 
                    $CellContext`pointOnSegmentQ[$CellContext`gLine$, 
                    Part[#, 1]]]], 
                    If[
                    $CellContext`SegmentIntersectionQ[{$CellContext`gLine$, \
#}], {
                    N[
                    $CellContext`LineIntersectionPoint[{$CellContext`gLine$, \
#}]], #}, 
                    If[
                    And[$CellContext`b$ != Part[#, 2], 
                    $CellContext`pointOnSegmentQ[$CellContext`gLine$, 
                    Part[#, 2]]], {
                    Part[#, 2], #}, 
                    If[
                    And[$CellContext`b$ != Part[#, 1], 
                    $CellContext`pointOnSegmentQ[$CellContext`gLine$, 
                    Part[#, 1]]], {
                    Part[#, 1], #}]]]]& , 
                    DeleteCases[
                    
                    DeleteCases[$CellContext`listofAllLines$, \
{$CellContext`b$, 
                    Blank[]}], {
                    Blank[], $CellContext`b$}]], Null], 
                   EuclideanDistance[$CellContext`p$, 
                    Part[#, 1]] < EuclideanDistance[$CellContext`p$, 
                    Part[#2, 1]]& ]; 
                If[$CellContext`giList$ != {}, $CellContext`giPoint$ = 
                   Part[$CellContext`giList$, 1, 1]; $CellContext`giLine$ = 
                   Part[$CellContext`giList$, 1, 2]; If[
                    Or[
                    And[
                    $CellContext`pointOnSegmentQ[$CellContext`lvLine$, \
$CellContext`giPoint$], Chop[
                    $CellContext`getAngle[$CellContext`pb$]] != 0], 
                    And[$CellContext`i$ == 1, $CellContext`pbaAngle$ <= Pi/2], 
                    And[
                    $CellContext`SegmentIntersectionQ[{$CellContext`gLine$, \
$CellContext`lvLine$}], \
$CellContext`LineIntersectionPoint[{$CellContext`gLine$, \
$CellContext`lvLine$}] == $CellContext`giPoint$], $CellContext`giPoint$ == 
                    Part[$CellContext`lvLine$, 2]], $CellContext`visibleList$ = 
                    Join[$CellContext`visibleList$, {$CellContext`giPoint$, \
$CellContext`b$}]; $CellContext`lvLine$ = $CellContext`ba$, \
$CellContext`visibleList$ = 
                    Join[$CellContext`visibleList$, {$CellContext`b$, \
$CellContext`giPoint$}]; $CellContext`lvLine$ = $CellContext`giLine$]]; Null, 
                If[$CellContext`pbAngle$ != $CellContext`pprevbAngle$, 
                  
                  AppendTo[$CellContext`visibleList$, $CellContext`b$]]; \
$CellContext`lvLine$ = $CellContext`ba$; Table[
                  If[
                   $CellContext`SegmentIntersectionQ[{$CellContext`ba$, 
                    
                    Part[$CellContext`jList$, $CellContext`i$]}], \
$CellContext`abNotGlaInt$ = N[
                    $CellContext`LineIntersectionPoint[{$CellContext`ba$, 
                    Part[$CellContext`jList$, $CellContext`i$]}]]; If[
                    $CellContext`noIntersection[$CellContext`p$, \
$CellContext`abNotGlaInt$, $CellContext`listofAllLines$], 
                    AppendTo[$CellContext`visibleList$, \
$CellContext`abNotGlaInt$]; $CellContext`lvLine$ = 
                    Part[$CellContext`jList$, $CellContext`i$]]], \
{$CellContext`i$, 1, 
                   Length[$CellContext`jList$], 1}]], 
              If[
               $CellContext`SegmentIntersectionQ[{$CellContext`pb$, \
$CellContext`lvLine$}], If[$CellContext`pbaAngle$ < Pi, 
                 If[
                  And[
                   Not[
                    $CellContext`leftOrRight[$CellContext`p$, \
$CellContext`b$, $CellContext`a$]], 
                   $CellContext`SegmentIntersectionQ[{$CellContext`lvLine$, \
$CellContext`ba$}]], $CellContext`abNotVisInt$ = N[
                    $CellContext`LineIntersectionPoint[{$CellContext`lvLine$, \
$CellContext`ba$}]]; If[
                    $CellContext`noIntersection[$CellContext`p$, \
$CellContext`abNotVisInt$, $CellContext`listofAllLines$], 
                    AppendTo[$CellContext`visibleList$, \
$CellContext`abNotVisInt$]; $CellContext`lvLine$ = $CellContext`ba$]]]; 
               If[$CellContext`pbcAngle$ < Pi, 
                 If[
                  And[
                   Not[
                    $CellContext`leftOrRight[$CellContext`p$, \
$CellContext`b$, $CellContext`c$]], 
                   $CellContext`SegmentIntersectionQ[{$CellContext`lvLine$, \
$CellContext`bc$}]], $CellContext`bcNotVisInt$ = N[
                    $CellContext`LineIntersectionPoint[{$CellContext`lvLine$, \
$CellContext`bc$}]]; If[
                    $CellContext`noIntersection[$CellContext`p$, \
$CellContext`bcNotVisInt$, $CellContext`listofAllLines$], 
                    AppendTo[$CellContext`visibleList$, \
$CellContext`bcNotVisInt$]; $CellContext`lvLine$ = $CellContext`bc$]]], 
               Map[If[
                 $CellContext`SegmentIntersectionQ[{#, $CellContext`lvLine$}],
                  AppendTo[$CellContext`visibleList$, 
                   $CellContext`LineIntersectionPoint[{#, \
$CellContext`lvLine$}]]; $CellContext`lvLine$ = #]& , $CellContext`jList$]]]; 
            If[$CellContext`pbaAngle$ < Pi, 
              AppendTo[$CellContext`jList$, $CellContext`ba$]]; 
            If[$CellContext`pbcAngle$ < Pi, 
              
              AppendTo[$CellContext`jList$, $CellContext`bc$]]; \
$CellContext`jList$ = DeleteCases[$CellContext`jList$, {
                
                Blank[], $CellContext`b$}]; $CellContext`wip$ = \
$CellContext`wi$; AppendTo[$CellContext`visibleSList$, 
              Join[
               
               Join[{$CellContext`p$, $CellContext`fvPoint$}, \
$CellContext`visibleList$], {$CellContext`p$}]]; 
            AppendTo[$CellContext`JlineList$, $CellContext`jList$]; 
            AppendTo[$CellContext`lvLineList$, $CellContext`lvLine$]]; \
$CellContext`oldP$ = $CellContext`p$]; 
        PrependTo[$CellContext`sortedList$, {$CellContext`p$, \
$CellContext`fvPoint$}]; 
        AppendTo[$CellContext`sortedList$, {$CellContext`p$, \
$CellContext`fvPoint$}]; 
        AppendTo[$CellContext`visibleSList$, $CellContext`visibleList$]; 
        AppendTo[$CellContext`lvLineList$, {{}, {}}]; Graphics[{{{
             Opacity[0.5], 
             EdgeForm[{Thin}], Transparent, 
             Polygon[$CellContext`complexPoly$]}}, {{
             Opacity[0.5], 
             EdgeForm[{Thin}], Transparent, 
             Polygon[$CellContext`workspace$]}}, {{
             EdgeForm[{
               Lighter[Purple, 0.8]}], 
             Opacity[0.5], Yellow, 
             Polygon[$CellContext`visibleList$]}}, {{
             EdgeForm[{
               Lighter[Purple, 0.8]}], 
             Opacity[0.3], Orange, 
             Polygon[
              Part[$CellContext`visibleSList$, $CellContext`s$$]]}}, {{
            Blue, PointSize -> Medium, 
             Point[$CellContext`p$], 
             Circle[$CellContext`p$, 0.2, {0, 
               $CellContext`getAngle[{$CellContext`p$, 
                 Part[$CellContext`sortedList$, $CellContext`s$$, 2]}]}]}}, {{
             Opacity[0.4], Blue, 
             Line[{$CellContext`p$, 
               Part[$CellContext`sortedList$, $CellContext`s$$, 2]}]}}, {{
            Orange, 
             Thickness[0.01], 
             Line[
              Part[$CellContext`lvLineList$, $CellContext`s$$]]}}, {{
             Thickness[0.005], Green, 
             Line[
              Part[$CellContext`JlineList$, $CellContext`s$$]]}}, {{Red, 
             Point[$CellContext`visibleList$]}}, PreserveImageOptions -> 
           True}, PlotRange -> 6.05 {{-1, 1}, {-1, 1}}, ImageSize -> Large]], 
      "Specifications" :> {{{$CellContext`s$$, 1, "Vertices"}, 1, 
         Dynamic[$CellContext`m$$ + 2], 1}, {{$CellContext`m$$, 1}, 
         ControlType -> 
         None}, {{$CellContext`pts$$, {{0.5, 5}, {-4.3, 
           2.65}, {-5, -0.169}, {-5, -3.}, {3.5, -5}, {0, -2.5}, {1.25, 0}, {
           4.25, 0}, {0.5, 1.15}, {-1.15, 0.75}, {1.22, -4.19}, {-1.5, 
           1.5}, {-1.83, 0.47}}}, {-6, -6}, {6, 6}, ControlType -> Locator, 
         Appearance -> None, FrameMargins -> -5}}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{615., {326., 332.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.774192283637506*^9, 3.774192417279713*^9},
 CellLabel->"Out[22]=",
 CellID->111880909,ExpressionUUID->"4e228422-1274-48ef-9376-3fe9f8d88c80"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ManipulateCaptionSection",ExpressionUUID->"5a39b56f-7ba4-4a24-a365-f678427a16ca"],

Cell["XXXX", "ManipulateCaption",ExpressionUUID->"54b38d2e-bae7-4bbd-9ce5-791dae0f1da5"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "ThumbnailSection",ExpressionUUID->"0b7fb8fb-1d55-4d31-b458-e15b64f4707a"],

Cell[BoxData[
 GraphicsBox[
  {EdgeForm[GrayLevel[0]], FaceForm[GrayLevel[1]], RectangleBox[{0, 0}], 
   InsetBox[
    StyleBox["\<\"Thumbnail Placeholder\"\>",
     StripOnInput->False,
     FontFamily->"Verdana",
     FontSize->14], {0.5, 0.6}], InsetBox[
    StyleBox["\<\"Replace this with your\"\>",
     StripOnInput->False,
     FrontFaceColor->GrayLevel[0.5],
     GraphicsColor->GrayLevel[0.5],
     FontFamily->"Verdana",
     FontSize->10,
     FontColor->GrayLevel[0.5],
     $CellContext`BackFaceColor -> GrayLevel[0.5]], {0.5, 0.45}], InsetBox[
    StyleBox["\<\"Manipulate at a particular setting.\"\>",
     StripOnInput->False,
     FrontFaceColor->GrayLevel[0.5],
     GraphicsColor->GrayLevel[0.5],
     FontFamily->"Verdana",
     FontSize->10,
     FontColor->GrayLevel[0.5],
     $CellContext`BackFaceColor -> GrayLevel[0.5]], {0.5, 0.39}], InsetBox[
    StyleBox["\<\"(Do not use a bitmap.)\"\>",
     StripOnInput->False,
     FrontFaceColor->GrayLevel[0.5],
     GraphicsColor->GrayLevel[0.5],
     FontFamily->"Verdana",
     FontSize->10,
     FontColor->GrayLevel[0.5],
     $CellContext`BackFaceColor -> GrayLevel[0.5]], {0.5, 0.315}]},
  ImageMargins->0.,
  ImageSize->220]], "Output",
 CellEditDuplicate->
  False,ExpressionUUID->"6960c4de-aa44-4200-b926-556c96b8d2f8"]
}, Open  ]],

Cell[CellGroupData[{

Cell["", "SnapshotsSection",ExpressionUUID->"791bc182-650b-43f4-9342-c02a00d68934"],

Cell[BoxData[
 GraphicsBox[
  {EdgeForm[GrayLevel[0]], FaceForm[GrayLevel[1]], RectangleBox[{0, 0}], 
   InsetBox[
    StyleBox["\<\"Snapshot Placeholder\"\>",
     StripOnInput->False,
     FontFamily->"Verdana",
     FontSize->14], {0.5, 0.6}], InsetBox[
    StyleBox["\<\"Replace this with your\"\>",
     StripOnInput->False,
     FrontFaceColor->GrayLevel[0.5],
     GraphicsColor->GrayLevel[0.5],
     FontFamily->"Verdana",
     FontSize->10,
     FontColor->GrayLevel[0.5],
     $CellContext`BackFaceColor -> GrayLevel[0.5]], {0.5, 0.45}], InsetBox[
    StyleBox["\<\"Manipulate at a particular setting.\"\>",
     StripOnInput->False,
     FrontFaceColor->GrayLevel[0.5],
     GraphicsColor->GrayLevel[0.5],
     FontFamily->"Verdana",
     FontSize->10,
     FontColor->GrayLevel[0.5],
     $CellContext`BackFaceColor -> GrayLevel[0.5]], {0.5, 0.39}], InsetBox[
    StyleBox["\<\"(Do not use a bitmap.)\"\>",
     StripOnInput->False,
     FrontFaceColor->GrayLevel[0.5],
     GraphicsColor->GrayLevel[0.5],
     FontFamily->"Verdana",
     FontSize->10,
     FontColor->GrayLevel[0.5],
     $CellContext`BackFaceColor -> GrayLevel[0.5]], {0.5, 0.315}]},
  ImageMargins->0.,
  ImageSize->220]], "Output",
 CellEditDuplicate->
  False,ExpressionUUID->"78795695-b198-4da5-9e73-8c2473223bf0"]
}, Open  ]],

Cell["", "DetailsSection",ExpressionUUID->"05c4ebfa-1d99-48a9-8e19-486956cdf2a3"],

Cell[CellGroupData[{

Cell["", "ControlSuggestionsSection",ExpressionUUID->"c5137450-b25b-420c-8b3c-e1042c6b4de4"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Resize Images",ExpressionUUID->"5851180c-3c65-40e8-84ed-2c648f9b67cb"]}],
  "\"Click inside an image to reveal its orange resize frame.\\nDrag any of \
the orange resize handles to resize the image.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "ResizeImages",ExpressionUUID->"33c6ddc4-a637-4a09-b606-42e773b3f70a"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Rotate and Zoom in 3D",ExpressionUUID->
    "e2914c00-c0c9-4684-8cb4-1aa9f3adca7c"]}],
  RowBox[{
   "\"Drag a 3D graphic to rotate it. Starting the drag near the center \
tumbles\\nthe graphic; starting near a corner turns it parallel to the plane \
of the screen.\\nHold down \"", 
    FrameBox[
    "Ctrl", Background -> GrayLevel[0.9], FrameMargins -> 2, FrameStyle -> 
     GrayLevel[0.9]], "\" (or \"", 
    FrameBox[
    "Cmd", Background -> GrayLevel[0.9], FrameMargins -> 2, FrameStyle -> 
     GrayLevel[0.9]], "\" on Mac) and drag up and down to zoom.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "RotateAndZoomIn3D",ExpressionUUID->"2f93f9b8-532a-482e-9eca-09e7bb9d95fe"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Drag Locators",ExpressionUUID->"83e5df43-7cd9-4975-9d7d-d881429a815d"]}],
  RowBox[{"\"Drag any locator (\"", 
    GraphicsBox[
     LocatorBox[
      Scaled[{0.5, 0.5}]], ImageSize -> 20], 
    "\", etc.) to move it around.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "DragLocators",ExpressionUUID->"33d80ddd-cebe-44a7-8d96-d9ea0c3bba40"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Create and Delete Locators",ExpressionUUID->
    "dd21f9e5-1f42-4fc2-9e21-36e2129aa77a"]}],
  RowBox[{"\"Insert a new locator in the graphic by holding down the \"", 
    FrameBox[
    "Alt", Background -> GrayLevel[0.9], FrameMargins -> 2, FrameStyle -> 
     GrayLevel[0.9]], 
    "\" key\\nand clicking where you want it to be. Delete a locator by \
clicking it\\nwhile holding down the \"", 
    FrameBox[
    "Alt", Background -> GrayLevel[0.9], FrameMargins -> 2, FrameStyle -> 
     GrayLevel[0.9]], "\" key.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "CreateAndDeleteLocators",ExpressionUUID->"06e6e3fa-56fa-4990-baac-\
f909200b664b"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Slider Zoom",ExpressionUUID->"7b6e40b6-cae9-424d-a6f1-2016de1d0c95"]}],
  RowBox[{"\"Hold down the \"", 
    FrameBox[
    "Alt", Background -> GrayLevel[0.9], FrameMargins -> 2, FrameStyle -> 
     GrayLevel[0.9]], 
    "\" key while moving a slider to make fine adjustments in the slider \
value.\\nHold \"", 
    FrameBox[
    "Ctrl", Background -> GrayLevel[0.9], FrameMargins -> 2, FrameStyle -> 
     GrayLevel[0.9]], "\" and/or \"", 
    FrameBox[
    "Shift", Background -> GrayLevel[0.9], FrameMargins -> 2, FrameStyle -> 
     GrayLevel[0.9]], "\" at the same time as \"", 
    FrameBox[
    "Alt", Background -> GrayLevel[0.9], FrameMargins -> 2, FrameStyle -> 
     GrayLevel[0.9]], "\" to make ever finer adjustments.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "SliderZoom",ExpressionUUID->"dee22a13-1a21-4675-8135-3c6be6deb4e6"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Gamepad Controls",ExpressionUUID->
    "d638a221-5c90-4242-a94c-0ddc54c7a90f"]}],
  "\"Control this Demonstration with a gamepad or other\\nhuman interface \
device connected to your computer.\"",
  TooltipDelay->0.35]], "ControlSuggestions",
 CellChangeTimes->{3.35696210375764*^9, 3.3895522232313623`*^9},
 FontFamily->"Verdana",
 CellTags->
  "GamepadControls",ExpressionUUID->"6147b021-eb54-4f00-b596-7878c714bc13"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Automatic Animation",ExpressionUUID->
    "c7eedcd0-18ce-4d7c-9c70-54d42377af2b"]}],
  RowBox[{"\"Animate a slider in this Demonstration by clicking the\"", 
    AdjustmentBox[
     Cell[
      GraphicsData[
      "CompressedBitmap", 
       "eJzzTSzJSM1NLMlMTlRwL0osyMhMLlZwyy8CCjEzMjAwcIKwAgOI/R/IhBKc\n\
/4EAyGAG0f+nTZsGwgysIJIRKsWKLAXGIHFmEpUgLADxWUAkI24jZs+eTaEt\n\
IG+wQKRmzJgBlYf5lhEA30OqWA=="], "Graphics", ImageSize -> {9, 9}, ImageMargins -> 
      0, CellBaseline -> Baseline], BoxBaselineShift -> 0.1839080459770115, 
     BoxMargins -> {{0., 0.}, {-0.1839080459770115, 0.1839080459770115}}], 
    "\"button\\nnext to the slider, and then clicking the play button that \
appears.\\nAnimate all controls by selecting \"", 
    StyleBox["Autorun", FontWeight -> "Bold"], "\" from the\"", 
    AdjustmentBox[
     Cell[
      GraphicsData[
      "CompressedBitmap", 
       "eJyNULENwyAQfEySIlMwTVJlCGRFsosokeNtqBmDBagoaZjAI1C8/8GUUUC6\n\
57h7cQ8PvU7Pl17nUav7oj/TPH7V7b2QJAUAXBkKmCPRowxICy64bRvGGNF7\n\
X8CctGoDSN4xhIDGGDhzFXwUh3/ClBKrDQPmnGXtI6u0OOd+tZBVUqy1xSaH\n\
UqiK6pPe4XdEdAz6563tx/gejuORGMxJaz8mdpJn7hc="], "Graphics", 
      ImageSize -> {10, 10}, ImageMargins -> 0, CellBaseline -> Baseline], 
     BoxBaselineShift -> 0.1839080459770115, 
     BoxMargins -> {{0., 0.}, {-0.1839080459770115, 0.1839080459770115}}], 
    "\"menu.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "AutomaticAnimation",ExpressionUUID->"3eee5984-8ef9-4ace-a2e5-8f06b02e6054"],

Cell[BoxData[
 TooltipBox[
  RowBox[{
   CheckboxBox[False], Cell[
   " Bookmark Animation",ExpressionUUID->
    "0bd476e9-1f8e-4fd7-b35e-e2a517ce7716"]}],
  RowBox[{
   "\"See a prepared animation of this Demonstration by selecting\\n\"", 
    StyleBox["Animate Bookmarks", FontWeight -> "Bold"], "\" from the\"", 
    AdjustmentBox[
     Cell[
      GraphicsData[
      "CompressedBitmap", 
       "eJyNULENwyAQfEySIlMwTVJlCGRFsosokeNtqBmDBagoaZjAI1C8/8GUUUC6\n\
57h7cQ8PvU7Pl17nUav7oj/TPH7V7b2QJAUAXBkKmCPRowxICy64bRvGGNF7\n\
X8CctGoDSN4xhIDGGDhzFXwUh3/ClBKrDQPmnGXtI6u0OOd+tZBVUqy1xSaH\n\
UqiK6pPe4XdEdAz6563tx/gejuORGMxJaz8mdpJn7hc="], "Graphics", 
      ImageSize -> {10, 10}, ImageMargins -> 0, CellBaseline -> Baseline], 
     BoxBaselineShift -> 0.1839080459770115, 
     BoxMargins -> {{0., 0.}, {-0.1839080459770115, 0.1839080459770115}}], 
    "\"menu.\""}],
  TooltipDelay->0.35]], "ControlSuggestions",
 FontFamily->"Verdana",
 CellTags->
  "BookmarkAnimation",ExpressionUUID->"f58f24ba-6d42-4822-b545-f8fb194e5b1f"]
}, Open  ]],

Cell["", "SearchTermsSection",ExpressionUUID->"2e24a6c3-d3fe-4307-a640-fe2f0c9c5d98"],

Cell["", "RelatedLinksSection",ExpressionUUID->"59dc82a1-0d77-4e07-8e78-110739ecb2ad"],

Cell[CellGroupData[{

Cell["", "AuthorSection",ExpressionUUID->"c8407d9a-ba37-4acb-b419-d2dd155c2b56"],

Cell["Contributed by: XXXX", "Author",ExpressionUUID->"51cf7a80-660b-45f7-a06c-01d764003537"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1536, 791},
WindowMargins->{{-8, Automatic}, {Automatic, -8}},
FrontEndVersion->"11.3 for Microsoft Windows (64-bit) (March 6, 2018)",
StyleDefinitions->FrontEnd`FileName[{"Wolfram"}, "Demonstration.nb", 
  CharacterEncoding -> "UTF-8"]
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{
 "ResizeImages"->{
  Cell[219319, 4057, 429, 10, 70, "ControlSuggestions",ExpressionUUID->"33c6ddc4-a637-4a09-b606-42e773b3f70a",
   CellTags->"ResizeImages"]},
 "RotateAndZoomIn3D"->{
  Cell[219751, 4069, 800, 19, 70, "ControlSuggestions",ExpressionUUID->"2f93f9b8-532a-482e-9eca-09e7bb9d95fe",
   CellTags->"RotateAndZoomIn3D"]},
 "DragLocators"->{
  Cell[220554, 4090, 457, 13, 70, "ControlSuggestions",ExpressionUUID->"33d80ddd-cebe-44a7-8d96-d9ea0c3bba40",
   CellTags->"DragLocators"]},
 "CreateAndDeleteLocators"->{
  Cell[221014, 4105, 761, 19, 70, "ControlSuggestions",ExpressionUUID->"06e6e3fa-56fa-4990-baac-f909200b664b",
   CellTags->"CreateAndDeleteLocators"]},
 "SliderZoom"->{
  Cell[221778, 4126, 961, 23, 70, "ControlSuggestions",ExpressionUUID->"dee22a13-1a21-4675-8135-3c6be6deb4e6",
   CellTags->"SliderZoom"]},
 "GamepadControls"->{
  Cell[222742, 4151, 491, 12, 70, "ControlSuggestions",ExpressionUUID->"6147b021-eb54-4f00-b596-7878c714bc13",
   CellTags->"GamepadControls"]},
 "AutomaticAnimation"->{
  Cell[223236, 4165, 1586, 34, 70, "ControlSuggestions",ExpressionUUID->"3eee5984-8ef9-4ace-a2e5-8f06b02e6054",
   CellTags->"AutomaticAnimation"]},
 "BookmarkAnimation"->{
  Cell[224825, 4201, 1030, 24, 70, "ControlSuggestions",ExpressionUUID->"f58f24ba-6d42-4822-b545-f8fb194e5b1f",
   CellTags->"BookmarkAnimation"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"ResizeImages", 226641, 4251},
 {"RotateAndZoomIn3D", 226807, 4254},
 {"DragLocators", 226973, 4257},
 {"CreateAndDeleteLocators", 227145, 4260},
 {"SliderZoom", 227315, 4263},
 {"GamepadControls", 227477, 4266},
 {"AutomaticAnimation", 227647, 4269},
 {"BookmarkAnimation", 227820, 4272}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1510, 35, 91, 0, 74, "DemoTitle",ExpressionUUID->"62fa5e5c-8f1b-42e7-a012-01b3303a92ab"],
Cell[CellGroupData[{
Cell[1626, 39, 88, 0, 275, "InitializationSection",ExpressionUUID->"a4e720a4-3f00-48f1-b8e4-36fd19a7fafa"],
Cell[1717, 41, 25617, 704, 1217, "Input",ExpressionUUID->"f20966f7-a813-491c-8d30-f8c35ca68dd6",
 InitializationCell->True,
 CellID->141966600]
}, Open  ]],
Cell[CellGroupData[{
Cell[27371, 750, 84, 0, 231, "ManipulateSection",ExpressionUUID->"4815c593-ada9-4ffd-9118-673e464308a9"],
Cell[CellGroupData[{
Cell[27480, 754, 166932, 2783, 3392, "Input",ExpressionUUID->"fcb08c69-7902-45d7-b5e2-0258f440fe1a",
 CellID->52884272],
Cell[194415, 3539, 21612, 417, 670, "Output",ExpressionUUID->"4e228422-1274-48ef-9376-3fe9f8d88c80",
 CellID->111880909]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[216076, 3962, 91, 0, 169, "ManipulateCaptionSection",ExpressionUUID->"5a39b56f-7ba4-4a24-a365-f678427a16ca"],
Cell[216170, 3964, 88, 0, 22, "ManipulateCaption",ExpressionUUID->"54b38d2e-bae7-4bbd-9ce5-791dae0f1da5"]
}, Open  ]],
Cell[CellGroupData[{
Cell[216295, 3969, 83, 0, 172, "ThumbnailSection",ExpressionUUID->"0b7fb8fb-1d55-4d31-b458-e15b64f4707a"],
Cell[216381, 3971, 1300, 35, 230, "Output",ExpressionUUID->"6960c4de-aa44-4200-b926-556c96b8d2f8"]
}, Open  ]],
Cell[CellGroupData[{
Cell[217718, 4011, 83, 0, 142, "SnapshotsSection",ExpressionUUID->"791bc182-650b-43f4-9342-c02a00d68934"],
Cell[217804, 4013, 1299, 35, 230, "Output",ExpressionUUID->"78795695-b198-4da5-9e73-8c2473223bf0"]
}, Open  ]],
Cell[219118, 4051, 81, 0, 339, "DetailsSection",ExpressionUUID->"05c4ebfa-1d99-48a9-8e19-486956cdf2a3"],
Cell[CellGroupData[{
Cell[219224, 4055, 92, 0, 70, "ControlSuggestionsSection",ExpressionUUID->"c5137450-b25b-420c-8b3c-e1042c6b4de4"],
Cell[219319, 4057, 429, 10, 70, "ControlSuggestions",ExpressionUUID->"33c6ddc4-a637-4a09-b606-42e773b3f70a",
 CellTags->"ResizeImages"],
Cell[219751, 4069, 800, 19, 70, "ControlSuggestions",ExpressionUUID->"2f93f9b8-532a-482e-9eca-09e7bb9d95fe",
 CellTags->"RotateAndZoomIn3D"],
Cell[220554, 4090, 457, 13, 70, "ControlSuggestions",ExpressionUUID->"33d80ddd-cebe-44a7-8d96-d9ea0c3bba40",
 CellTags->"DragLocators"],
Cell[221014, 4105, 761, 19, 70, "ControlSuggestions",ExpressionUUID->"06e6e3fa-56fa-4990-baac-f909200b664b",
 CellTags->"CreateAndDeleteLocators"],
Cell[221778, 4126, 961, 23, 70, "ControlSuggestions",ExpressionUUID->"dee22a13-1a21-4675-8135-3c6be6deb4e6",
 CellTags->"SliderZoom"],
Cell[222742, 4151, 491, 12, 70, "ControlSuggestions",ExpressionUUID->"6147b021-eb54-4f00-b596-7878c714bc13",
 CellTags->"GamepadControls"],
Cell[223236, 4165, 1586, 34, 70, "ControlSuggestions",ExpressionUUID->"3eee5984-8ef9-4ace-a2e5-8f06b02e6054",
 CellTags->"AutomaticAnimation"],
Cell[224825, 4201, 1030, 24, 70, "ControlSuggestions",ExpressionUUID->"f58f24ba-6d42-4822-b545-f8fb194e5b1f",
 CellTags->"BookmarkAnimation"]
}, Open  ]],
Cell[225870, 4228, 85, 0, 70, "SearchTermsSection",ExpressionUUID->"2e24a6c3-d3fe-4307-a640-fe2f0c9c5d98"],
Cell[225958, 4230, 86, 0, 70, "RelatedLinksSection",ExpressionUUID->"59dc82a1-0d77-4e07-8e78-110739ecb2ad"],
Cell[CellGroupData[{
Cell[226069, 4234, 80, 0, 70, "AuthorSection",ExpressionUUID->"c8407d9a-ba37-4acb-b419-d2dd155c2b56"],
Cell[226152, 4236, 93, 0, 70, "Author",ExpressionUUID->"51cf7a80-660b-45f7-a06c-01d764003537"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Xu0FPPviU0TThAwnYs9w5lNg *)
