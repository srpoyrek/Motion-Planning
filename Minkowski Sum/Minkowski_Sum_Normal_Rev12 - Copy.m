(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 11.3' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       158,          7]
NotebookDataLength[    155754,       3161]
NotebookOptionsPosition[    132372,       2678]
NotebookOutlinePosition[    153854,       3116]
CellTagsIndexPosition[    153780,       3111]
WindowTitle->Minkowski_Sum_Normal_Rev6.nb
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["InitializationObjects", "Subchapter",
 InitializationCell->True,
 CellChangeTimes->{{3.757180256578904*^9, 3.7571802620182867`*^9}, 
   3.761275826790447*^9, 3.7612758593216743`*^9, {3.7612758893656282`*^9, 
   3.761275916278715*^9}, 3.761275989925659*^9, {3.761276235212937*^9, 
   3.7612764104810534`*^9}},
 CellID->537274558,ExpressionUUID->"5599f4a2-65a4-42a1-bf11-d3fd3bcdf90d"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Returns", " ", "a", " ", "Nested", " ", "list", " ", "of", " ", "pair", 
    " ", "of", " ", "points", " ", "representing", " ", "each", " ", "line", 
    " ", "in", " ", "polygon"}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"lineList", "[", "list_", "]"}], ":=", 
    RowBox[{"Partition", "[", 
     RowBox[{
      RowBox[{"Append", "[", 
       RowBox[{"list", ",", 
        RowBox[{"First", "[", "list", "]"}]}], "]"}], ",", "2", ",", "1"}], 
     "]"}]}], ";"}], " "}]], "Input",
 InitializationCell->True,
 InitializationGroup->True,
 CellChangeTimes->{
  3.7612764783095455`*^9, {3.7618672147740064`*^9, 3.76186721615232*^9}},
 CellLabel->"In[1]:=",
 CellID->254152640,ExpressionUUID->"6e528893-f7ee-40c7-9deb-78be7673e08e"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{
   "Retruns", " ", "True", " ", "if", " ", "refelx", " ", "else", " ", 
    "false"}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"reflex", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"x1_", ",", "y1_"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"x2_", ",", "y2_"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"x3_", ",", "y3_"}], "}"}]}], "]"}], ":=", 
   RowBox[{"Chop", "[", 
    RowBox[{
     RowBox[{"Det", "[", 
      RowBox[{"(", "\[NoBreak]", GridBox[{
         {"1", "x1", "y1"},
         {"1", "x2", "y2"},
         {"1", "x3", "y3"}
        }], "\[NoBreak]", ")"}], "]"}], ">", "  ", "0"}], "]"}]}]}]], "Input",
 InitializationCell->True,
 InitializationGroup->True,
 CellLabel->"In[8]:=",
 CellID->614486719,ExpressionUUID->"1339aed7-b782-43d4-a513-1309c9a70749"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"Discretizes", " ", "a", " ", "line"}], ",", " ", 
    RowBox[{
    "returns", " ", "points", " ", "on", " ", "a", " ", "line", " ", "which", 
     " ", "are", " ", "at", " ", "equidistant", " ", "from", " ", "each", " ", 
     RowBox[{"other", "."}]}]}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"discretizeLine", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"x1_", ",", "y1_"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"x2_", ",", "y2_"}], "}"}]}], "}"}], ",", "step_"}], "]"}], ":=",
    "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"(", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"x1", "+", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"x2", "-", "x1"}], ")"}], "*", "#"}]}], ")"}], ",", 
        RowBox[{"(", 
         RowBox[{"y1", "+", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"y2", "-", "y1"}], ")"}], "*", "#"}]}], ")"}]}], "}"}], 
      ")"}], "&"}], "/@", 
    RowBox[{"Range", "[", 
     RowBox[{"0", ",", "1", ",", "step"}], "]"}]}]}]}]], "Input",
 InitializationCell->True,
 InitializationGroup->True,
 CellLabel->"In[3]:=",
 CellID->221074263,ExpressionUUID->"c85c6f6a-d8e1-42d2-8f09-a0aeb6e9b573"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Discretizes", " ", "a", " ", "polygon", " ", "using", " ", "the", " ", 
    "discretizeLine", " ", "function"}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"discretizePoly", "[", 
    RowBox[{"poly_", ",", "step_"}], "]"}], ":=", "\[IndentingNewLine]", 
   RowBox[{"Append", "[", 
    RowBox[{
     RowBox[{"Flatten", "[", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"discretizeLine", "[", 
           RowBox[{"#", ",", "step"}], "]"}], "\[LeftDoubleBracket]", 
          RowBox[{"1", ";;", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"1", "/", "step"}], ")"}], "-", "1"}]}], 
          "\[RightDoubleBracket]"}], "&"}], "/@", 
        RowBox[{"lineList", "[", "poly", "]"}]}], ",", "1"}], "]"}], ",", 
     RowBox[{"First", "@", "poly"}]}], "]"}]}]}]], "Input",
 InitializationCell->True,
 InitializationGroup->True,
 CellLabel->"In[4]:=",
 CellID->72501454,ExpressionUUID->"b4a37082-2f2e-4562-a5ee-1a2758beee35"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{
   "Returns", " ", "a", " ", "Normal", " ", "Vector", " ", "for", " ", "a", 
    " ", "line", " ", "between", " ", "two", " ", "points"}], "*)"}], 
  "\[IndentingNewLine]", 
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
      RowBox[{"x2", "-", "x1"}]}], "}"}], " ", "]"}]}]}]], "Input",
 InitializationCell->True,
 InitializationGroup->True,
 CellChangeTimes->{{3.7619654414489536`*^9, 3.761965445594994*^9}},
 CellLabel->"In[5]:=",
 CellID->260974026,ExpressionUUID->"4a71eaa6-15fe-4099-9e63-db235688a722"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{
   "Returns", " ", "a", " ", "Vector", " ", "for", " ", "a", " ", "line", " ",
     "between", " ", "two", " ", "points"}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"vector", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"x2_", ",", "y2_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x1_", ",", "y1_"}], "}"}]}], "}"}], "]"}], ":=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"x2", "-", "x1"}], ",", 
     RowBox[{"y2", "-", "y1"}]}], "}"}]}]}]], "Input",
 InitializationCell->True,
 InitializationGroup->True,
 CellLabel->"In[6]:=",
 CellID->429294093,ExpressionUUID->"253250fd-c3ce-4b2b-b5cb-645b39f63846"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"Refrence", ":", 
     RowBox[{"-", " ", "https"}], ":"}], "//", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"mathematica", ".", "stackexchange", ".", "com"}], "/", 
        "questions"}], "/", "18647"}], "/", "how"}], "-", "to", "-", "check", 
     "-", "if", "-", "an", "-", "expression", "-", "is", "-", "a", "-", 
     "real", "-", "valued", "-", "number"}]}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"realQrm", "[", 
     RowBox[{"_Real", "|", "_Integer", "|", "_Rational"}], "]"}], ":=", 
    "True"}], "\n", 
   RowBox[{
    RowBox[{"realQrm", "[", "_", "]"}], ":=", "False"}]}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.762007996763587*^9, 3.762007996776552*^9}, 
   3.7620080601470237`*^9, {3.762008711190383*^9, 3.762008723437642*^9}},
 CellID->7629533,ExpressionUUID->"924f0dc4-fc65-47cb-8c49-c104e23e4f5a"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Demo code", "Subchapter",
 CellChangeTimes->{{3.757180256578904*^9, 3.757180270689994*^9}, 
   3.75851140949195*^9},
 CellID->37223916,ExpressionUUID->"86eb5d61-1192-401b-987f-c378b134e3e4"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"oldpts", "=", 
        RowBox[{"{", "}"}]}], ",", "roboconvex", ",", "oboconvex", ",", 
       "robot", ",", "obstacle", ",", "rc", ",", "oc", ",", "robotNormal", 
       ",", "obstacleNormal", ",", "robotArrows", ",", "obstacleArrows", ",", 
       "robotSubscript", ",", "obstacleSubscript", ",", "robotAssignedNormal",
        ",", "obstacleAssignedNormal", ",", "orderOfNormals", ",", 
       "minkowskiPoints", ",", "shiftedMink", ",", "minklinelist", ",", 
       RowBox[{"minkrobotlinelist", "=", 
        RowBox[{"{", "}"}]}], ",", 
       RowBox[{"minkObstlinelist", "=", 
        RowBox[{"{", "}"}]}], ",", "sortedArrows", ",", "sortedNormals", ",", 
       "robotlabel", ",", "obstaclelabel", ",", "sortedNormalRobot", ",", 
       "sortedNormalObstacle", ",", "discretPolygon", ",", "sortedVectors", 
       ",", "pos", ",", "prev", ",", "minkowskiPointswithSide", ",", 
       "shiftedMinkwithSide", ",", "minkowskiSidesNormalArrows", ",", 
       "shiftedMinkLineList", ",", "roboPosMink", ",", "obosPosMink", ",", 
       "minkowskiRobotSidesLabels", ",", "minkowskiObstacleSidesLabels", ",", 
       "orderOfNormalsKeys"}], "}"}], ",", "\[IndentingNewLine]", 
     "\[IndentingNewLine]", 
     RowBox[{"(*", 
      RowBox[{
      "constrain", " ", "vertices", " ", "of", " ", "robot", " ", "and", " ", 
       "obstacle"}], "*)"}], "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"pts", "\[NotEqual]", " ", "oldpts"}], ",", 
        RowBox[{
         RowBox[{"oldpts", "=", "pts"}], ";", "\[IndentingNewLine]", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{
              RowBox[{
               RowBox[{
               "pts", "\[LeftDoubleBracket]", "i", "\[RightDoubleBracket]"}], 
               "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], "<", 
              "1.34704"}], ",", 
             RowBox[{
              RowBox[{
               RowBox[{
               "pts", "\[LeftDoubleBracket]", "i", "\[RightDoubleBracket]"}], 
               "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], "=", 
              "1.34704"}]}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"i", ",", "1", ",", "m", ",", "1"}], "}"}]}], "]"}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{
              RowBox[{
               RowBox[{
               "pts", "\[LeftDoubleBracket]", "i", "\[RightDoubleBracket]"}], 
               "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], ">", 
              RowBox[{"-", "1.34704"}]}], ",", 
             RowBox[{
              RowBox[{
               RowBox[{
               "pts", "\[LeftDoubleBracket]", "i", "\[RightDoubleBracket]"}], 
               "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], "=", 
              RowBox[{"-", "1.34704"}]}]}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"i", ",", "6", ",", 
             RowBox[{"n", "+", "5"}], ",", "1"}], "}"}]}], "]"}], ";"}]}], 
       "\[IndentingNewLine]", "]"}], ";", "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{
        RowBox[{
         RowBox[{
         "Get", " ", "Convex", " ", "Polygons", " ", "for", " ", "robot"}], 
         " ", "&"}], " ", "obstacles"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"roboconvex", " ", "=", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"m", "\[GreaterEqual]", "3"}], ",", 
         RowBox[{"Reverse", "@", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{"#", "[", "\"\<Coordinates\>\"", "]"}], "[", 
              RowBox[{"[", 
               RowBox[{
                RowBox[{"#", "[", "\"\<BoundaryVertices\>\"", "]"}], 
                "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], "]"}],
               "]"}], "&"}], "@", 
            RowBox[{"ConvexHullMesh", "[", 
             RowBox[{"pts", "\[LeftDoubleBracket]", 
              RowBox[{"1", ";;", "m"}], "\[RightDoubleBracket]"}], "]"}]}], 
           ")"}]}], ",", "\[IndentingNewLine]", 
         RowBox[{"pts", "\[LeftDoubleBracket]", 
          RowBox[{"1", ";;", 
           RowBox[{"m", "+", "1"}]}], "\[RightDoubleBracket]"}]}], "]"}]}], 
      ";", "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{
        RowBox[{"Print", "@", "roboconvex"}], ";"}], "*)"}], 
      "\[IndentingNewLine]", 
      RowBox[{"oboconvex", " ", "=", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"n", "\[GreaterEqual]", " ", "3"}], ",", 
         RowBox[{"Reverse", "@", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{"#", "[", "\"\<Coordinates\>\"", "]"}], "[", 
              RowBox[{"[", 
               RowBox[{
                RowBox[{"#", "[", "\"\<BoundaryVertices\>\"", "]"}], 
                "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], "]"}],
               "]"}], "&"}], "@", 
            RowBox[{"ConvexHullMesh", "[", 
             RowBox[{"pts", "\[LeftDoubleBracket]", 
              RowBox[{"6", ";;", 
               RowBox[{"n", "+", "5"}]}], "\[RightDoubleBracket]"}], "]"}]}], 
           ")"}]}], ",", 
         RowBox[{"pts", "\[LeftDoubleBracket]", 
          RowBox[{"6", ";;", 
           RowBox[{"n", "+", "6"}]}], "\[RightDoubleBracket]"}]}], "]"}]}], 
      ";", "\[IndentingNewLine]", 
      RowBox[{"rl", "=", 
       RowBox[{
        RowBox[{"Length", "@", "roboconvex"}], "-", "1"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"ol", "=", 
       RowBox[{
        RowBox[{"Length", "@", "oboconvex"}], "-", "1"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"robot", "=", 
       RowBox[{"roboconvex", "\[LeftDoubleBracket]", 
        RowBox[{"1", ";;", "rl"}], "\[RightDoubleBracket]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"obstacle", "=", 
       RowBox[{"oboconvex", "\[LeftDoubleBracket]", 
        RowBox[{"1", ";;", "ol"}], "\[RightDoubleBracket]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{
        RowBox[{
         RowBox[{"Get", " ", "the", " ", "Centroids", " ", "robot"}], " ", 
         "&"}], " ", "obstacle", " ", "Polygons"}], "*)"}], 
      "\[IndentingNewLine]", 
      RowBox[{"rc", "=", 
       RowBox[{"Mean", "@", "robot"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"oc", "=", 
       RowBox[{"Mean", "@", "obstacle"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{
       "Correct", " ", "the", " ", "direction", " ", "for", " ", "triangle", 
        " ", "when", " ", "it", " ", "is", " ", "flipped"}], "*)"}], 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"m", "\[Equal]", "3"}], ",", " ", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"!", 
            RowBox[{"realQrm", "@", 
             RowBox[{"(", 
              RowBox[{"ArcCos", "@", 
               RowBox[{"VectorAngle", "[", 
                RowBox[{
                 RowBox[{"vector", "[", 
                  RowBox[{"{", 
                   RowBox[{"rc", ",", 
                    RowBox[{"Median", "[", 
                    RowBox[{"robot", "\[LeftDoubleBracket]", 
                    RowBox[{"1", ";;", "2"}], "\[RightDoubleBracket]"}], 
                    "]"}]}], "}"}], "]"}], ",", 
                 RowBox[{"-", 
                  RowBox[{"normalVector", "[", 
                   RowBox[{"robot", "\[LeftDoubleBracket]", 
                    RowBox[{"1", ";;", "2"}], "\[RightDoubleBracket]"}], 
                   "]"}]}]}], "]"}]}], ")"}]}]}], ",", 
           RowBox[{"robot", "=", 
            RowBox[{"Reverse", "@", "robot"}]}]}], "]"}], ";"}]}], "]"}], ";",
       "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"n", "\[Equal]", "3"}], ",", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"!", 
            RowBox[{"realQrm", "@", 
             RowBox[{"(", 
              RowBox[{"ArcCos", "@", 
               RowBox[{"VectorAngle", "[", 
                RowBox[{
                 RowBox[{"vector", "[", 
                  RowBox[{"{", 
                   RowBox[{"oc", ",", 
                    RowBox[{"Median", "[", 
                    RowBox[{"obstacle", "\[LeftDoubleBracket]", 
                    RowBox[{"1", ";;", "2"}], "\[RightDoubleBracket]"}], 
                    "]"}]}], "}"}], "]"}], ",", 
                 RowBox[{"-", 
                  RowBox[{"normalVector", "[", 
                   RowBox[{"obstacle", "\[LeftDoubleBracket]", 
                    RowBox[{"1", ";;", "2"}], "\[RightDoubleBracket]"}], 
                   "]"}]}]}], "]"}]}], ")"}]}]}], ",", 
           RowBox[{"obstacle", "=", 
            RowBox[{"Reverse", "@", "obstacle"}]}]}], "]"}], ";"}]}], "]"}], 
      ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{
       "Get", " ", "the", " ", "Robot", " ", "and", " ", "Obstacle", " ", 
        "Normals"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"robotNormal", " ", "=", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"rl", "\[GreaterEqual]", "2"}], ",", 
             RowBox[{"(", 
              RowBox[{"-", 
               RowBox[{"normalVector", "[", "#", "]"}]}], ")"}], ",", 
             RowBox[{"{", 
              RowBox[{"0", ",", "0"}], "}"}]}], "]"}], ",", 
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"rl", "\[GreaterEqual]", "2"}], ",", 
             RowBox[{"-", 
              RowBox[{"vector", "[", "#", "]"}]}], ",", 
             RowBox[{"{", 
              RowBox[{"0", ",", "0"}], "}"}]}], "]"}], ",", 
           "\"\<\[Alpha]\>\"", ",", "#"}], "}"}], "&"}], "/@", 
        RowBox[{"(", 
         RowBox[{"lineList", "@", "robot"}], ")"}]}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", " ", 
      RowBox[{"(*", " ", 
       RowBox[{
       "Robot", " ", "Normals", " ", "are", " ", "in", " ", "inward", " ", 
        "direction"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"obstacleNormal", "=", 
       RowBox[{
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"ol", "\[GreaterEqual]", "2"}], ",", 
             RowBox[{"normalVector", "[", "#", "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"0", ",", "0"}], "}"}]}], "]"}], ",", 
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"ol", "\[GreaterEqual]", "2"}], ",", 
             RowBox[{"vector", "[", "#", "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"0", ",", "0"}], "}"}]}], "]"}], ",", "\"\<\[Beta]\>\"",
            ",", "#"}], "}"}], "&"}], "/@", 
        RowBox[{"(", 
         RowBox[{"lineList", "@", "obstacle"}], ")"}]}]}], ";", 
      RowBox[{"(*", " ", 
       RowBox[{
       "Obstacle", " ", "Normals", " ", "are", " ", "in", " ", "outward", " ",
         "direction"}], "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{
       "Make", " ", "Arrows", " ", "on", " ", "inside", " ", "the", " ", 
        "polygons"}], "*)"}], " ", 
      RowBox[{"(*", 
       RowBox[{"Retouching", " ", "the", " ", "code", " ", "needed"}], "*)"}],
       "\[IndentingNewLine]", 
      RowBox[{"robotArrows", "=", 
       RowBox[{
        RowBox[{
         RowBox[{"Arrow", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Median", "[", 
             RowBox[{
             "#", "\[LeftDoubleBracket]", "4", "\[RightDoubleBracket]"}], 
             "]"}], ",", 
            RowBox[{
             RowBox[{"0.45", 
              RowBox[{
              "#", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}], 
             "+", 
             RowBox[{"Median", "[", 
              RowBox[{
              "#", "\[LeftDoubleBracket]", "4", "\[RightDoubleBracket]"}], 
              "]"}]}]}], "}"}], "]"}], "&"}], "/@", "robotNormal"}]}], ";", 
      " ", "\[IndentingNewLine]", 
      RowBox[{"obstacleArrows", " ", "=", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"Arrow", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Median", "[", 
             RowBox[{
             "#", "\[LeftDoubleBracket]", "4", "\[RightDoubleBracket]"}], 
             "]"}], ",", 
            RowBox[{
             RowBox[{"0.45", 
              RowBox[{
              "#", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}], 
             "+", 
             RowBox[{"Median", "[", 
              RowBox[{
              "#", "\[LeftDoubleBracket]", "4", "\[RightDoubleBracket]"}], 
              "]"}]}]}], "}"}], "]"}], "&"}], "/@", "obstacleNormal"}]}], ";",
       "\t", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{"Create", " ", "Sub", " ", "script"}], "*)"}], 
      "\[IndentingNewLine]", 
      RowBox[{"robotSubscript", "=", 
       RowBox[{"Cases", "[", 
        RowBox[{
         RowBox[{"Range", "[", 
          RowBox[{"1", ",", 
           RowBox[{"Length", "[", "robotNormal", "]"}]}], "]"}], ",", 
         RowBox[{
          RowBox[{"t", ":", "_"}], "\[RuleDelayed]", 
          SubscriptBox["\[Alpha]", "t"]}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"obstacleSubscript", "=", 
       RowBox[{"Cases", "[", 
        RowBox[{
         RowBox[{"Range", "[", 
          RowBox[{"1", ",", 
           RowBox[{"Length", "[", "obstacleNormal", "]"}]}], "]"}], ",", 
         RowBox[{
          RowBox[{"t", ":", "_"}], "\[RuleDelayed]", 
          SubscriptBox["\[Beta]", "t"]}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{
       "Assign", " ", "the", " ", "Edges", " ", "of", " ", "robot", " ", 
        "with", " ", "\[Alpha]", " ", "and", " ", "obstacle", " ", 
        RowBox[{"as", " ", "/", 
         RowBox[{"[", "Beta", "]"}]}]}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"robotAssignedNormal", " ", "=", 
       RowBox[{"AssociationThread", "[", 
        RowBox[{"robotSubscript", "\[Rule]", " ", "robotNormal"}], "]"}]}], 
      ";", "\[IndentingNewLine]", 
      RowBox[{"obstacleAssignedNormal", " ", "=", 
       RowBox[{"AssociationThread", "[", 
        RowBox[{"obstacleSubscript", "\[Rule]", " ", "obstacleNormal"}], 
        "]"}]}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{
        RowBox[{
         RowBox[{"Merge", " ", "the", " ", "Normals"}], " ", "&"}], " ", 
        "add", " ", "the", " ", "angles", " ", "in", " ", "the", " ", "value",
         " ", "list", " ", "and", " ", "Sort", " ", "the", " ", "Nested", " ",
         "List", " ", "based", " ", "on", " ", "Angles"}], "*)"}], 
      "\[IndentingNewLine]", 
      RowBox[{"orderOfNormals", " ", "=", 
       RowBox[{"Sort", "[", 
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"!", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{
                   RowBox[{
                    RowBox[{
                    "#", "\[LeftDoubleBracket]", "1", 
                    "\[RightDoubleBracket]"}], "\[LeftDoubleBracket]", "1", 
                    "\[RightDoubleBracket]"}], "\[Equal]", "0"}], "&&", 
                  RowBox[{
                   RowBox[{
                    RowBox[{
                    "#", "\[LeftDoubleBracket]", "1", 
                    "\[RightDoubleBracket]"}], "\[LeftDoubleBracket]", "2", 
                    "\[RightDoubleBracket]"}], "\[Equal]", "0"}]}], ")"}]}], 
               " ", ",", 
               RowBox[{"ArcTan", "[", 
                RowBox[{
                 RowBox[{
                  RowBox[{
                  "#", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 ",", 
                 RowBox[{
                  RowBox[{
                  "#", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}], 
                "]"}], ",", "None"}], "]"}], ",", 
             RowBox[{
             "#", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], ",", 
             RowBox[{
             "#", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], ",", 
             RowBox[{
             "#", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], ",", 
             RowBox[{
             "#", "\[LeftDoubleBracket]", "4", "\[RightDoubleBracket]"}]}], 
            "}"}], "&"}], "/@", 
          RowBox[{"Join", " ", "[", 
           RowBox[{"robotAssignedNormal", ",", "obstacleAssignedNormal"}], 
           "]"}]}], ",", 
         RowBox[{
          RowBox[{
           RowBox[{
           "#1", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], "<", 
           RowBox[{
           "#2", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}], 
          "&"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"sortedVectors", "=", 
       RowBox[{"Values", "[", "orderOfNormals", "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{
        RowBox[{
         RowBox[{
         "Get", " ", "the", " ", "Sequence", " ", "position", " ", "where", 
          " ", "\[Alpha]"}], " ", "&"}], " ", "\[Beta]", " ", "meet"}], 
       "*)"}], "\[IndentingNewLine]", 
      RowBox[{"pos", "=", 
       RowBox[{
        RowBox[{"SequencePosition", "[", 
         RowBox[{
          RowBox[{"sortedVectors", "\[LeftDoubleBracket]", 
           RowBox[{";;", ",", "4"}], "\[RightDoubleBracket]"}], ",", 
          RowBox[{"{", 
           RowBox[{"\"\<\[Alpha]\>\"", ",", "\"\<\[Beta]\>\""}], "}"}]}], 
         "]"}], "\[LeftDoubleBracket]", 
        RowBox[{"1", ",", "1"}], "\[RightDoubleBracket]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"orderOfNormalsKeys", "=", 
       RowBox[{"RotateLeft", "[", 
        RowBox[{
         RowBox[{"Keys", "@", "orderOfNormals"}], ",", "pos"}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{
       "Calculate", " ", "the", " ", "Prev", " ", "Vaule", " ", "based", " ", 
        "on", " ", "the", " ", "position"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"prev", "=", 
       RowBox[{"rc", "+", 
        RowBox[{
         RowBox[{
          RowBox[{"sortedVectors", "\[LeftDoubleBracket]", 
           RowBox[{"pos", "+", "1"}], "\[RightDoubleBracket]"}], 
          "\[LeftDoubleBracket]", "5", "\[RightDoubleBracket]"}], 
         "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], " ", "-", 
        RowBox[{
         RowBox[{
          RowBox[{
          "sortedVectors", "\[LeftDoubleBracket]", "pos", 
           "\[RightDoubleBracket]"}], "\[LeftDoubleBracket]", "5", 
          "\[RightDoubleBracket]"}], "\[LeftDoubleBracket]", "1", 
         "\[RightDoubleBracket]"}]}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{
       "Get", " ", "the", " ", "Minkowski", " ", "by", " ", "adding", " ", 
        "the", " ", "vectors", " ", "in", " ", "the", " ", "sorted", " ", 
        "order"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"minkowskiPointswithSide", "=", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Chop", "[", 
             RowBox[{"prev", "=", 
              RowBox[{"prev", "-", 
               RowBox[{
               "#", "\[LeftDoubleBracket]", "3", 
                "\[RightDoubleBracket]"}]}]}], "]"}], ",", 
            RowBox[{
            "#", "\[LeftDoubleBracket]", "4", "\[RightDoubleBracket]"}]}], 
           "}"}], ")"}], "&"}], "/@", 
        RowBox[{"RotateLeft", "[", 
         RowBox[{"sortedVectors", ",", 
          RowBox[{"pos", "-", "1"}]}], "]"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"minkowskiPoints", "=", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"#", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
           "&"}], "/@", "minkowskiPointswithSide"}], ")"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{
        RowBox[{
         RowBox[{
         "Get", " ", "List", " ", "of", " ", "lines", " ", "for", " ", 
          "robot"}], " ", "&"}], " ", "obstacle", " ", "in", " ", "the", " ", 
        "minkowski", " ", "sum"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"shiftedMinkwithSide", "=", 
       RowBox[{
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", "oc"}], "+", 
             RowBox[{"{", 
              RowBox[{"2.298", ",", 
               RowBox[{"-", "2.298"}]}], "}"}], "+", 
             RowBox[{
             "#", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}], 
            ")"}], ",", 
           RowBox[{
           "#", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}], 
          "}"}], "&"}], "/@", 
        RowBox[{"(", "minkowskiPointswithSide", ")"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"AppendTo", "[", 
       RowBox[{"shiftedMinkwithSide", ",", 
        RowBox[{
        "shiftedMinkwithSide", "\[LeftDoubleBracket]", "1", 
         "\[RightDoubleBracket]"}]}], "]"}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{"Shifted", " ", "Minkowski", " ", "Sum", " ", "Points"}], 
       "*)"}], "\[IndentingNewLine]", 
      RowBox[{"shiftedMink", "=", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"#", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
           "&"}], "/@", "shiftedMinkwithSide"}], ")"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{
       "Get", " ", "robot", " ", "and", " ", "obstacle", " ", "respective", 
        " ", "side", " ", "from", " ", "minkowski", " ", "Region"}], "*)"}], 
      "\[IndentingNewLine]", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{
            "shiftedMinkwithSide", "\[LeftDoubleBracket]", "i", 
             "\[RightDoubleBracket]"}], "\[LeftDoubleBracket]", "2", 
            "\[RightDoubleBracket]"}], "\[Equal]", "\"\<\[Alpha]\>\""}], ",", 
          RowBox[{"AppendTo", "[", 
           RowBox[{"minkrobotlinelist", ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{
               RowBox[{"shiftedMinkwithSide", "\[LeftDoubleBracket]", 
                RowBox[{"i", "-", "1"}], "\[RightDoubleBracket]"}], 
               "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], ",", 
              RowBox[{
               RowBox[{
               "shiftedMinkwithSide", "\[LeftDoubleBracket]", "i", 
                "\[RightDoubleBracket]"}], "\[LeftDoubleBracket]", "1", 
               "\[RightDoubleBracket]"}]}], "}"}]}], "]"}], ",", 
          RowBox[{"AppendTo", "[", 
           RowBox[{"minkObstlinelist", ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{
               RowBox[{"shiftedMinkwithSide", "\[LeftDoubleBracket]", 
                RowBox[{"i", "-", "1"}], "\[RightDoubleBracket]"}], 
               "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], ",", 
              RowBox[{
               RowBox[{
               "shiftedMinkwithSide", "\[LeftDoubleBracket]", "i", 
                "\[RightDoubleBracket]"}], "\[LeftDoubleBracket]", "1", 
               "\[RightDoubleBracket]"}]}], "}"}]}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"i", ",", "2", ",", 
          RowBox[{"Length", "@", "shiftedMinkwithSide"}], ",", "1"}], "}"}]}],
        "]"}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{"Make", " ", "Arrows"}], "*)"}], " ", "\[IndentingNewLine]", 
      RowBox[{"sortedArrows", "=", 
       RowBox[{
        RowBox[{
         RowBox[{"Arrow", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "2.3"}], " ", ",", 
              RowBox[{"-", "1.5"}]}], "}"}], ",", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "2.3"}], ",", 
               RowBox[{"-", "1.5"}]}], "}"}], "+", 
             RowBox[{
             "#", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}]}], 
           "}"}], "]"}], "&"}], "/@", 
        RowBox[{"Values", "[", "orderOfNormals", "]"}]}]}], ";", " ", 
      RowBox[{"(*", 
       RowBox[{"Retouching", " ", "the", " ", "code", " ", "needed"}], "*)"}],
       "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{"Draw", " ", "Labels", " ", "on", " ", 
        RowBox[{"Robot", "/", "Obstacle"}]}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"robotlabel", " ", "=", " ", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"rl", "\[GreaterEqual]", "2"}], ",", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"Text", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"Keys", "[", "robotAssignedNormal", "]"}], 
              "\[LeftDoubleBracket]", "i", "\[RightDoubleBracket]"}], ",", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"Median", "@", 
                RowBox[{
                 RowBox[{
                 "robotAssignedNormal", "\[LeftDoubleBracket]", "i", 
                  "\[RightDoubleBracket]"}], "\[LeftDoubleBracket]", "4", 
                 "\[RightDoubleBracket]"}]}], "-", 
               RowBox[{"0.2", 
                RowBox[{
                 RowBox[{
                 "robotAssignedNormal", "\[LeftDoubleBracket]", "i", 
                  "\[RightDoubleBracket]"}], "\[LeftDoubleBracket]", "1", 
                 "\[RightDoubleBracket]"}]}]}], ")"}]}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"i", ",", "1", ",", 
             RowBox[{"Length", "[", "robotAssignedNormal", "]"}], ",", "1"}], 
            "}"}]}], "]"}], ",", 
         RowBox[{"{", "}"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"obstaclelabel", " ", "=", " ", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"ol", "\[GreaterEqual]", "2"}], ",", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"Text", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"Keys", "[", "obstacleAssignedNormal", "]"}], 
              "\[LeftDoubleBracket]", "i", "\[RightDoubleBracket]"}], ",", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"Median", "@", 
                RowBox[{
                 RowBox[{
                 "obstacleAssignedNormal", "\[LeftDoubleBracket]", "i", 
                  "\[RightDoubleBracket]"}], "\[LeftDoubleBracket]", "4", 
                 "\[RightDoubleBracket]"}]}], "-", 
               RowBox[{"0.2", 
                RowBox[{
                 RowBox[{
                 "obstacleAssignedNormal", "\[LeftDoubleBracket]", "i", 
                  "\[RightDoubleBracket]"}], "\[LeftDoubleBracket]", "1", 
                 "\[RightDoubleBracket]"}]}]}], ")"}]}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"i", ",", "1", ",", 
             RowBox[{"Length", "[", "obstacleAssignedNormal", "]"}], ",", 
             "1"}], "}"}]}], "]"}], ",", 
         RowBox[{"{", "}"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{
       "Normal", " ", "Labels", " ", "on", " ", "Sorted", " ", "Normal", " ", 
        "Disk"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"sortedNormalRobot", "=", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"rl", "\[GreaterEqual]", "2"}], ",", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"Text", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"Keys", "[", "robotAssignedNormal", "]"}], 
              "\[LeftDoubleBracket]", "i", "\[RightDoubleBracket]"}], ",", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{"-", "2.3"}], ",", 
                RowBox[{"-", "1.5"}]}], "}"}], "+", 
              RowBox[{"1.2", 
               RowBox[{
                RowBox[{
                "robotAssignedNormal", "\[LeftDoubleBracket]", "i", 
                 "\[RightDoubleBracket]"}], "\[LeftDoubleBracket]", "1", 
                "\[RightDoubleBracket]"}]}]}]}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"i", ",", "1", ",", 
             RowBox[{"Length", "[", "robotAssignedNormal", "]"}], ",", "1"}], 
            "}"}]}], "]"}], ",", 
         RowBox[{"{", "}"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"sortedNormalObstacle", "=", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"ol", "\[GreaterEqual]", "2"}], ",", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"Text", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"Keys", "[", "obstacleAssignedNormal", "]"}], 
              "\[LeftDoubleBracket]", "i", "\[RightDoubleBracket]"}], ",", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{"-", "2.3"}], ",", 
                RowBox[{"-", "1.5"}]}], "}"}], "+", 
              RowBox[{"1.2", 
               RowBox[{
                RowBox[{
                "obstacleAssignedNormal", "\[LeftDoubleBracket]", "i", 
                 "\[RightDoubleBracket]"}], "\[LeftDoubleBracket]", "1", 
                "\[RightDoubleBracket]"}]}]}]}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"i", ",", "1", ",", 
             RowBox[{"Length", "[", "obstacleAssignedNormal", "]"}], ",", 
             "1"}], "}"}]}], "]"}], ",", 
         RowBox[{"{", "}"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{"Minkowski", " ", "Normals", " ", "Arrows"}], "*)"}], 
      "\[IndentingNewLine]", 
      RowBox[{"minkowskiSidesNormalArrows", "=", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"Arrow", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Median", "[", "#", "]"}], ",", 
             RowBox[{
              RowBox[{"0.5", 
               RowBox[{"normalVector", "@", "#"}]}], "+", 
              RowBox[{"Median", "[", "#", "]"}]}]}], "}"}], "]"}], ")"}], 
         "&"}], "/@", 
        RowBox[{"Join", "[", 
         RowBox[{"minkrobotlinelist", ",", "minkObstlinelist"}], "]"}]}]}], 
      ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{"Minkowski", " ", 
        RowBox[{"Robot", "/", "Obstacle"}], " ", "Respective", " ", "Side", 
        " ", "Normals", " ", "Labels"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"shiftedMinkLineList", "=", 
       RowBox[{"lineList", "@", "shiftedMink"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"roboPosMink", "=", 
       RowBox[{"(", 
        RowBox[{"Flatten", "@", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"Position", "[", 
             RowBox[{"orderOfNormalsKeys", ",", 
              SubscriptBox["\[Alpha]", "#"]}], "]"}], "&"}], "/@", 
           RowBox[{"Range", "[", 
            RowBox[{"1", ",", "rl"}], "]"}]}], ")"}]}], ")"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"obosPosMink", "=", 
       RowBox[{"(", 
        RowBox[{"Flatten", "@", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"Position", "[", 
             RowBox[{"orderOfNormalsKeys", ",", 
              SubscriptBox["\[Beta]", "#"]}], "]"}], "&"}], "/@", 
           RowBox[{"Range", "[", 
            RowBox[{"1", ",", "ol"}], "]"}]}], ")"}]}], ")"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"minkowskiRobotSidesLabels", "=", " ", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"rl", "\[GreaterEqual]", "2"}], ",", 
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{"Text", "[", 
             RowBox[{
              RowBox[{
              "orderOfNormalsKeys", "\[LeftDoubleBracket]", "#", 
               "\[RightDoubleBracket]"}], ",", 
              RowBox[{
               RowBox[{
                RowBox[{"-", "0.25"}], 
                RowBox[{"(", 
                 RowBox[{"normalVector", "@", 
                  RowBox[{
                  "shiftedMinkLineList", "\[LeftDoubleBracket]", "#", 
                   "\[RightDoubleBracket]"}]}], ")"}]}], "+", 
               RowBox[{"Mean", "@", 
                RowBox[{
                "shiftedMinkLineList", "\[LeftDoubleBracket]", "#", 
                 "\[RightDoubleBracket]"}]}]}]}], "]"}], ")"}], "&"}], "/@", 
          "roboPosMink"}], ",", 
         RowBox[{"{", "}"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"minkowskiObstacleSidesLabels", "=", " ", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"ol", "\[GreaterEqual]", "2"}], ",", 
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{"Text", "[", 
             RowBox[{
              RowBox[{
              "orderOfNormalsKeys", "\[LeftDoubleBracket]", "#", 
               "\[RightDoubleBracket]"}], ",", 
              RowBox[{
               RowBox[{
                RowBox[{"-", "0.25"}], 
                RowBox[{"(", 
                 RowBox[{"normalVector", "@", 
                  RowBox[{
                  "shiftedMinkLineList", "\[LeftDoubleBracket]", "#", 
                   "\[RightDoubleBracket]"}]}], ")"}]}], "+", 
               RowBox[{"Mean", "@", 
                RowBox[{
                "shiftedMinkLineList", "\[LeftDoubleBracket]", "#", 
                 "\[RightDoubleBracket]"}]}]}]}], "]"}], ")"}], "&"}], "/@", 
          "obosPosMink"}], ",", 
         RowBox[{"{", "}"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{
       "Discretize", " ", "the", " ", "minkowski", " ", "Polygon", " ", 
        "edges"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"discretPolygon", " ", "=", 
       RowBox[{"discretizePoly", "[", 
        RowBox[{"minkowskiPoints", ",", "step"}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"Graphics", "[", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{"(*", 
         RowBox[{"Boundary", " ", "Graphics", " ", "Object"}], "*)"}], 
        "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"EdgeForm", "[", "Thin", "]"}], ",", "White", ",", 
           RowBox[{"Polygon", "@", 
            RowBox[{"(", 
             RowBox[{"7", 
              RowBox[{"CirclePoints", "[", "4", "]"}]}], ")"}]}]}], "}"}], 
         "\[IndentingNewLine]", ",", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{
           "stableOrMove", "\[NotEqual]", "\"\<Move around Mikowski\>\""}], 
           ",", "\[IndentingNewLine]", 
           RowBox[{"(*", 
            RowBox[{"for", " ", "\"\<Stationary\>\""}], "*)"}], 
           "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"c", "=", "True"}], ";", 
            RowBox[{"(*", 
             RowBox[{"Enable", " ", "the", " ", "Locators"}], "*)"}], 
            "\[IndentingNewLine]", 
            RowBox[{"{", 
             RowBox[{"(*", 
              RowBox[{
              "Minkowski", " ", "Sum", " ", "Polygon", " ", "Graphics", " ", 
               "Object"}], "*)"}], "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Opacity", "[", "0.5", "]"}], ",", "LightGreen", 
                  ",", " ", 
                  RowBox[{"Polygon", "@", "shiftedMink"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"Blue", ",", 
                  RowBox[{"Line", "@", "minkrobotlinelist"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"Red", ",", 
                  RowBox[{"Line", "@", "minkObstlinelist"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"Black", ",", 
                  RowBox[{"Point", "@", "shiftedMink"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"Black", ",", 
                  RowBox[{"Text", "[", 
                   RowBox[{"\"\<Minkowski Sum\>\"", ",", 
                    RowBox[{"{", 
                    RowBox[{"2.3", ",", 
                    RowBox[{"-", "4.75"}]}], "}"}]}], "]"}]}], "}"}], ",", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{"a", "\[Equal]", "True"}], ",", 
                  RowBox[{"{", "minkowskiSidesNormalArrows", "}"}]}], "]"}], 
                ",", 
                RowBox[{"{", 
                 RowBox[{"Blue", ",", "minkowskiRobotSidesLabels"}], "}"}], 
                ",", 
                RowBox[{"{", 
                 RowBox[{"Red", ",", "minkowskiObstacleSidesLabels"}], 
                 "}"}]}], "}"}], "\[IndentingNewLine]", 
              RowBox[{"(*", 
               RowBox[{"Obstacle", " ", "Graphics", " ", "Object"}], "*)"}], 
              "\[IndentingNewLine]", ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"EdgeForm", "[", "Red", "]"}], ",", "LightRed", ",",
                   " ", 
                  RowBox[{"Polygon", "@", "obstacle"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"Red", ",", 
                  RowBox[{"Point", "@", 
                   RowBox[{"pts", "\[LeftDoubleBracket]", 
                    RowBox[{"6", ";;", 
                    RowBox[{"n", "+", "5"}]}], "\[RightDoubleBracket]"}]}]}], 
                 "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"Black", ",", 
                  RowBox[{"Point", "@", "obstacle"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"Black", ",", 
                  RowBox[{"Point", "@", "oc"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"If", "[", 
                  RowBox[{
                   RowBox[{"a", "\[Equal]", "True"}], ",", 
                   RowBox[{"{", "obstacleArrows", "}"}]}], "]"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"Red", ",", "obstaclelabel"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"Black", ",", 
                  RowBox[{"Text", "[", 
                   RowBox[{"\"\<Obstacle\>\"", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "2.3"}], ",", "0.8"}], "}"}]}], "]"}]}], 
                 "}"}]}], "}"}], "\[IndentingNewLine]", 
              RowBox[{"(*", 
               RowBox[{"Robot", " ", "Graphics", " ", "Object"}], "*)"}], 
              "\[IndentingNewLine]", ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"EdgeForm", "[", "Blue", "]"}], ",", "LightBlue", 
                  ",", " ", 
                  RowBox[{"Polygon", "@", "robot"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"Blue", ",", 
                  RowBox[{"Point", "@", 
                   RowBox[{"pts", "\[LeftDoubleBracket]", 
                    RowBox[{"1", ";;", "m"}], "\[RightDoubleBracket]"}]}]}], 
                 "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"Black", ",", 
                  RowBox[{"Point", "@", "robot"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"Black", ",", 
                  RowBox[{"Point", "@", "rc"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"If", "[", 
                  RowBox[{
                   RowBox[{"a", "\[Equal]", "True"}], ",", 
                   RowBox[{"{", "robotArrows", "}"}]}], "]"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"Blue", ",", "robotlabel"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"Black", ",", 
                  RowBox[{"Text", "[", 
                   RowBox[{"\"\<Robot\>\"", ",", 
                    RowBox[{"{", 
                    RowBox[{"2.3", ",", "0.8"}], "}"}]}], "]"}]}], "}"}]}], 
               "}"}], "\[IndentingNewLine]", 
              RowBox[{"(*", 
               RowBox[{
               "Sorted", " ", "Normals", " ", "Graphic", " ", "Object"}], 
               "*)"}], "\[IndentingNewLine]", ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"Black", ",", "sortedArrows"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"EdgeForm", "[", "Thin", "]"}], ",", "White", ",", 
                  RowBox[{"Disk", "[", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "2.3"}], ",", 
                    RowBox[{"-", "1.5"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0.5", ",", "0.5"}], "}"}]}], "]"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"Blue", ",", "sortedNormalRobot"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"Red", ",", "sortedNormalObstacle"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"Text", "[", 
                  RowBox[{"\"\<Sorted Normals\>\"", ",", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "2.3"}], ",", 
                    RowBox[{"-", "3.2"}]}], "}"}]}], "]"}], "}"}]}], "}"}]}], 
             "}"}]}], "\[IndentingNewLine]", ",", 
           RowBox[{"(*", 
            RowBox[{"for", " ", "\"\<Move around Mikowski\>\""}], "*)"}], 
           "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"c", "=", "False"}], ";", 
            RowBox[{"(*", 
             RowBox[{"Disable", " ", "the", " ", "Locators"}], "*)"}], 
            "\[IndentingNewLine]", 
            RowBox[{"{", 
             RowBox[{"(*", 
              RowBox[{
              "Minkowski", " ", "Sum", " ", "Polygon", " ", "Graphics", " ", 
               "Object"}], "*)"}], "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"EdgeForm", "[", "None", "]"}], ",", "LightGreen", 
                  ",", 
                  RowBox[{"Opacity", "[", "0.5", "]"}], ",", " ", 
                  RowBox[{"Polygon", "@", 
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "oc"}], "+", "#"}], ")"}], "&"}], "/@", 
                    "minkowskiPoints"}], ")"}]}]}], "}"}], 
                "\[IndentingNewLine]", ",", 
                RowBox[{"{", 
                 RowBox[{"Black", ",", 
                  RowBox[{"Point", "@", 
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "oc"}], "+", "#"}], ")"}], "&"}], "/@", 
                    "minkowskiPoints"}], ")"}]}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"Blue", ",", 
                  RowBox[{"Line", "@", 
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    RowBox[{"{", 
                    RowBox[{"2.298", ",", 
                    RowBox[{"-", "2.298"}]}], "}"}]}], "+", 
                    RowBox[{
                    "#", "\[LeftDoubleBracket]", "1", 
                    "\[RightDoubleBracket]"}]}], ",", 
                    RowBox[{
                    RowBox[{"-", 
                    RowBox[{"{", 
                    RowBox[{"2.298", ",", 
                    RowBox[{"-", "2.298"}]}], "}"}]}], "+", 
                    RowBox[{
                    "#", "\[LeftDoubleBracket]", "2", 
                    "\[RightDoubleBracket]"}]}]}], "}"}], ")"}], "&"}], "/@", 
                    "minkrobotlinelist"}], ")"}]}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"Red", ",", 
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"Line", "@", 
                    RowBox[{"(", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    RowBox[{"{", 
                    RowBox[{"2.298", ",", 
                    RowBox[{"-", "2.298"}]}], "}"}]}], "+", 
                    RowBox[{
                    "#", "\[LeftDoubleBracket]", "1", 
                    "\[RightDoubleBracket]"}]}], ",", 
                    RowBox[{
                    RowBox[{"-", 
                    RowBox[{"{", 
                    RowBox[{"2.298", ",", 
                    RowBox[{"-", "2.298"}]}], "}"}]}], "+", 
                    RowBox[{
                    "#", "\[LeftDoubleBracket]", "2", 
                    "\[RightDoubleBracket]"}]}]}], "}"}], ")"}]}], "&"}], "/@", 
                    RowBox[{"(", "minkObstlinelist", ")"}]}], ")"}]}], "}"}], 
                ",", 
                RowBox[{"{", " ", 
                 RowBox[{"Black", ",", 
                  RowBox[{"Text", "[", 
                   RowBox[{"\"\<Minkowski Sum\>\"", ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "1.1"}], "}"}]}], "]"}]}], "}"}]}], 
               "}"}], "\[IndentingNewLine]", 
              RowBox[{"(*", 
               RowBox[{"Obstacle", " ", "Graphics", " ", "Object"}], "*)"}], 
              "\[IndentingNewLine]", ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"EdgeForm", "[", "Red", "]"}], ",", "LightRed", ",",
                   " ", 
                  RowBox[{"Polygon", "@", 
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "oc"}], "+", "#"}], ")"}], "&"}], "/@", 
                    "obstacle"}], ")"}]}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"Black", ",", 
                  RowBox[{"Point", "@", 
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "oc"}], "+", "#"}], ")"}], "&"}], "/@", 
                    "obstacle"}], ")"}]}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"Black", ",", ",", 
                  RowBox[{"Text", "[", 
                   RowBox[{"\"\<Obstacle\>\"", ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "0"}], "}"}]}], "]"}]}], "}"}]}], "}"}],
               "\[IndentingNewLine]", 
              RowBox[{"(*", 
               RowBox[{"Robot", " ", "Graphics", " ", "Object"}], "*)"}], 
              "\[IndentingNewLine]", ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"EdgeForm", "[", "Blue", "]"}], ",", 
                  RowBox[{"Opacity", "[", "0.5", "]"}], ",", "LightBlue", ",", 
                  RowBox[{"Polygon", "@", 
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    "discretPolygon", "\[LeftDoubleBracket]", "s", 
                    "\[RightDoubleBracket]"}], "-", "rc", "-", "oc", "+", 
                    "#"}], ")"}], "&"}], "/@", "robot"}], ")"}]}]}], "}"}], 
                ",", 
                RowBox[{"{", 
                 RowBox[{"Black", ",", 
                  RowBox[{"Point", "@", 
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    "discretPolygon", "\[LeftDoubleBracket]", "s", 
                    "\[RightDoubleBracket]"}], "-", "rc", "-", "oc", "+", 
                    "#"}], ")"}], "&"}], "/@", "robot"}], ")"}]}]}], "}"}], 
                ",", 
                RowBox[{"{", 
                 RowBox[{"Red", ",", 
                  RowBox[{"Point", "@", 
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    "discretPolygon", "\[LeftDoubleBracket]", "s", 
                    "\[RightDoubleBracket]"}], "-", "oc"}], ")"}]}]}], "}"}], 
                ",", 
                RowBox[{"{", 
                 RowBox[{"Black", ",", 
                  RowBox[{"Text", "[", 
                   RowBox[{"\"\<Robot\>\"", ",", 
                    RowBox[{
                    RowBox[{
                    "discretPolygon", "\[LeftDoubleBracket]", "s", 
                    "\[RightDoubleBracket]"}], "-", "oc", "+", 
                    RowBox[{"{", 
                    RowBox[{"0.2", ",", "0.2"}], "}"}]}]}], "]"}]}], "}"}]}], 
               "}"}]}], "\[IndentingNewLine]", "}"}]}]}], "]"}]}], " ", "}"}],
        "]"}]}]}], " ", "]"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "stableOrMove", ",", "\"\<Stationary\>\"", ",", "\"\<View\>\""}], "}"}],
      ",", 
     RowBox[{"{", 
      RowBox[{"\"\<Stationary\>\"", ",", "\"\<Move around Mikowski\>\""}], 
      "}"}]}], "}"}], "\[IndentingNewLine]", ",", 
   RowBox[{"{", 
    RowBox[{"step", ",", "0.01", ",", 
     RowBox[{"ControlType", "\[Rule]", "None"}]}], "}"}], 
   "\[IndentingNewLine]", ",", 
   RowBox[{"{", 
    RowBox[{"rl", ",", "ol", ",", 
     RowBox[{"ControlType", "\[Rule]", "None"}]}], "}"}], 
   "\[IndentingNewLine]", ",", 
   RowBox[{"{", 
    RowBox[{"ol", ",", 
     RowBox[{"ControlType", "\[Rule]", "None"}]}], "}"}], 
   "\[IndentingNewLine]", ",", 
   RowBox[{"Dynamic", "@", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"stableOrMove", "\[NotEqual]", "\"\<Move around Mikowski\>\""}],
       ",", "\[IndentingNewLine]", 
      RowBox[{"Row", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Control", "@", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"a", ",", "True", ",", "\"\<Normals\>\""}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"True", ",", "False"}], "}"}]}], "}"}]}], 
          "\[IndentingNewLine]", ",", 
          RowBox[{"Control", "@", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"c", ",", "True", ",", "\"\<Locators\>\""}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"True", ",", "False"}], "}"}]}], "}"}]}], 
          "\[IndentingNewLine]", ",", 
          RowBox[{"Control", "@", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"m", ",", "5", ",", "\"\<Robot Edges\>\""}], "}"}], ",", 
             RowBox[{"Range", "[", 
              RowBox[{"1", ",", "5"}], "]"}]}], "}"}]}], 
          "\[IndentingNewLine]", ",", 
          RowBox[{"Control", "@", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"n", ",", "5", ",", "\"\<Obstacle Edges\>\""}], "}"}], 
             ",", 
             RowBox[{"Range", "[", 
              RowBox[{"1", ",", "5"}], "]"}]}], "}"}]}]}], "}"}], ",", 
        "\"\<  \>\""}], "]"}], "\[IndentingNewLine]", ",", 
      RowBox[{"Control", "@", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"s", ",", "1", ",", "\"\<Move\>\""}], "}"}], ",", "1", ",", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"rl", "+", "ol"}], ")"}], "*", 
            RowBox[{"(", 
             RowBox[{"1", "/", "step"}], ")"}]}], ")"}], "-", 
          RowBox[{"(", 
           RowBox[{"rl", "+", "ol", "-", "1"}], ")"}]}], ",", "1", ",", 
         RowBox[{"AnimationRunning", "->", "True"}], ",", 
         RowBox[{"Appearance", "\[Rule]", "\"\<Open\>\""}]}], "}"}]}]}], 
     "]"}]}], "\[IndentingNewLine]", ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"pts", ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"2.885", ",", "1.489"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"3.249", ",", "2.60"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"2.298", ",", "3.298"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"1.348", ",", "2.607"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"1.710", ",", "1.489"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "1.710"}], ",", "1.489"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "1.347"}], ",", "2.607"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "2.298"}], ",", "3.298"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "3.249"}], ",", "2.607"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "2.885"}], ",", "1.489"}], "}"}]}], "}"}]}], "}"}], 
     ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", "3.249"}], ",", "1.489"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"3.249", ",", "3.298"}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{"ControlType", "\[Rule]", "Locator"}], ",", 
     RowBox[{"Appearance", "\[Rule]", "None"}], ",", 
     RowBox[{"Enabled", "\[Rule]", "c"}]}], "}"}], "\[IndentingNewLine]", ",", 
   RowBox[{"AppearanceElements", "\[Rule]", 
    RowBox[{"{", "}"}]}], "\[IndentingNewLine]", ",", 
   RowBox[{"PreserveImageOptions", "\[Rule]", "True"}]}], 
  "\[IndentingNewLine]", "]"}]], "Input",
 CellChangeTimes->{{3.758244013242798*^9, 3.758244223526965*^9}, {
   3.7582443028527613`*^9, 3.758244338688245*^9}, {3.758244425929058*^9, 
   3.758244512901769*^9}, {3.7582445776385555`*^9, 3.7582446515484324`*^9}, {
   3.7582446881180367`*^9, 3.7582447011682067`*^9}, {3.758244741159774*^9, 
   3.7582447427481728`*^9}, {3.758244897827222*^9, 3.7582449427648325`*^9}, 
   3.7582450338561773`*^9, {3.7582450723900375`*^9, 3.758245376939286*^9}, {
   3.7582454127923746`*^9, 3.758245418840929*^9}, {3.758245487555586*^9, 
   3.7582457189223957`*^9}, {3.7582458037628784`*^9, 3.75824582301553*^9}, {
   3.7582461310548773`*^9, 3.758246376619952*^9}, {3.7582464833636045`*^9, 
   3.758246493524603*^9}, {3.7582466644188766`*^9, 3.7582466886831155`*^9}, {
   3.7582469319689493`*^9, 3.758246950650169*^9}, {3.758246981965933*^9, 
   3.758247004255974*^9}, {3.758247052738165*^9, 3.7582471933759937`*^9}, {
   3.7582472258811474`*^9, 3.7582472841607633`*^9}, {3.758247399558337*^9, 
   3.7582474115575876`*^9}, {3.758247769367564*^9, 3.7582478121420403`*^9}, {
   3.758248826678206*^9, 3.7582488768324785`*^9}, {3.758248910247943*^9, 
   3.758248990249359*^9}, {3.7582490248299184`*^9, 3.758249031193923*^9}, {
   3.758249126522832*^9, 3.758249220310568*^9}, {3.7582492940395775`*^9, 
   3.7582493455723658`*^9}, {3.75824937740765*^9, 3.758249421946067*^9}, {
   3.758249659747467*^9, 3.758249709112359*^9}, {3.7582498646529665`*^9, 
   3.758249918629094*^9}, {3.758249957676193*^9, 3.7582500773294773`*^9}, {
   3.7582501371624537`*^9, 3.7582504160827117`*^9}, {3.758250450888992*^9, 
   3.7582507180352783`*^9}, {3.758250766467561*^9, 3.758250767794213*^9}, {
   3.7582508314678597`*^9, 3.7582509394957314`*^9}, 3.758251032505909*^9, {
   3.7582511102758245`*^9, 3.7582511302663593`*^9}, 3.7582511627673407`*^9, {
   3.7582512154158545`*^9, 3.7582512225755196`*^9}, {3.7582512586809254`*^9, 
   3.7582513506038527`*^9}, {3.758251517549238*^9, 3.758251555254428*^9}, 
   3.7582516305485506`*^9, {3.75825174963315*^9, 3.7582517515525227`*^9}, {
   3.758251785369628*^9, 3.7582518031581945`*^9}, {3.7582518362593527`*^9, 
   3.758251842260764*^9}, {3.7582518758945613`*^9, 3.758251894909044*^9}, {
   3.7582520990768814`*^9, 3.7582523240060797`*^9}, {3.7582523770141296`*^9, 
   3.7582523771247234`*^9}, {3.7582524099836597`*^9, 3.758252530489271*^9}, {
   3.758308978470709*^9, 3.758309045651348*^9}, {3.758320023724322*^9, 
   3.758320043050688*^9}, {3.7583201062666564`*^9, 3.7583201328684907`*^9}, {
   3.758320224542421*^9, 3.7583202287032948`*^9}, {3.75832026232041*^9, 
   3.7583202696597843`*^9}, {3.7583204718232403`*^9, 3.758320485779922*^9}, {
   3.758320549376875*^9, 3.7583208967492404`*^9}, {3.7583209385893216`*^9, 
   3.7583209458290033`*^9}, {3.758367256264729*^9, 3.758367272003783*^9}, {
   3.758367358448435*^9, 3.758367476080681*^9}, {3.758367554512781*^9, 
   3.758367599723469*^9}, {3.7583676410279408`*^9, 3.7583676875005603`*^9}, {
   3.758367732422371*^9, 3.7583678455783296`*^9}, {3.7583679586764417`*^9, 
   3.758367962842985*^9}, 3.758368022021866*^9, {3.758368147649931*^9, 
   3.758368205114109*^9}, {3.7583682680555906`*^9, 3.7583682799362297`*^9}, {
   3.7583683201878133`*^9, 3.7583685090291862`*^9}, {3.758368539695402*^9, 
   3.758368547838767*^9}, {3.758368600287249*^9, 3.7583686206385083`*^9}, {
   3.758368712404154*^9, 3.758368961116106*^9}, {3.758369085839195*^9, 
   3.7583691372230806`*^9}, {3.758369286345622*^9, 3.758369539535203*^9}, {
   3.758369599477375*^9, 3.758369617232326*^9}, {3.758369652652939*^9, 
   3.7583697126948843`*^9}, {3.7583697872395563`*^9, 3.758369843097102*^9}, {
   3.758369876299859*^9, 3.758369885860611*^9}, {3.7583699196980453`*^9, 
   3.758370003063049*^9}, {3.7583700439739017`*^9, 3.758370052413802*^9}, 
   3.7583700930105376`*^9, {3.758370135655698*^9, 3.7583701794157825`*^9}, {
   3.7583702495252028`*^9, 3.758370273427171*^9}, {3.758381541901926*^9, 
   3.7583815820200634`*^9}, {3.7583816543100567`*^9, 
   3.7583816805096073`*^9}, {3.7583817795987177`*^9, 3.7583818028439026`*^9}, 
   3.7583818805717473`*^9, {3.7583819118782387`*^9, 3.758381967104381*^9}, {
   3.7583820169155226`*^9, 3.758382088550706*^9}, {3.758382172756156*^9, 
   3.758382183350507*^9}, {3.7583822524986553`*^9, 3.758382295015896*^9}, {
   3.7583823621350822`*^9, 3.7583823794441924`*^9}, {3.7583824229114337`*^9, 
   3.7583825321631565`*^9}, {3.758382583324538*^9, 3.7583825955172462`*^9}, {
   3.7583826349029293`*^9, 3.7583826406870255`*^9}, {3.7583827002961073`*^9, 
   3.7583827185118585`*^9}, {3.7583832330479865`*^9, 3.75838331894621*^9}, 
   3.7583835141902404`*^9, {3.758383608544114*^9, 3.7583837073866835`*^9}, {
   3.7583849612615995`*^9, 3.758384998307265*^9}, 3.7583851317177963`*^9, 
   3.7583911261628866`*^9, {3.758391758253442*^9, 3.7583917783019476`*^9}, {
   3.758391811095084*^9, 3.758391883162505*^9}, 3.7583919748198233`*^9, {
   3.7583920583435345`*^9, 3.75839217377385*^9}, {3.7584065334250383`*^9, 
   3.758406682904435*^9}, 3.758406867697203*^9, {3.7584069248663507`*^9, 
   3.758407021993634*^9}, {3.7584071423626766`*^9, 3.758407211969537*^9}, {
   3.7584072771991405`*^9, 3.7584073949831123`*^9}, {3.7584074350689383`*^9, 
   3.7584075270659266`*^9}, {3.7584079255339937`*^9, 3.7584079321981735`*^9}, 
   3.758408019315199*^9, {3.7584080619192667`*^9, 3.758408108036934*^9}, {
   3.7584081406048403`*^9, 3.758408141297984*^9}, {3.758408193455502*^9, 
   3.7584083306845164`*^9}, {3.758408362469515*^9, 3.75840842817284*^9}, {
   3.758408524313701*^9, 3.75840863295203*^9}, {3.758408737113475*^9, 
   3.7584087637901363`*^9}, {3.758408802208394*^9, 3.75840880486828*^9}, {
   3.758408864493826*^9, 3.758408872650014*^9}, {3.758408941783134*^9, 
   3.758409125326291*^9}, {3.758409170718899*^9, 3.7584092217205153`*^9}, {
   3.758409264809277*^9, 3.758409431287678*^9}, 3.7584094693099957`*^9, {
   3.758409572780289*^9, 3.758409579243006*^9}, {3.758409671665845*^9, 
   3.7584096720069323`*^9}, {3.7584099142321672`*^9, 
   3.7584099797885675`*^9}, {3.7584101611666102`*^9, 
   3.7584101620113506`*^9}, {3.758410624627341*^9, 3.758410901004816*^9}, {
   3.7584109350218277`*^9, 3.7584109762246604`*^9}, 3.758416095184392*^9, {
   3.758416270011057*^9, 3.7584162936758003`*^9}, {3.758416325706155*^9, 
   3.758416468263909*^9}, {3.758416500005025*^9, 3.7584169541192503`*^9}, {
   3.7584169881272993`*^9, 3.7584169925385036`*^9}, {3.7584170361608133`*^9, 
   3.7584170427432528`*^9}, {3.758417074724721*^9, 3.758417092999854*^9}, {
   3.7584171294962416`*^9, 3.758417263692377*^9}, {3.7584173093782015`*^9, 
   3.7584173278079157`*^9}, {3.758417358936659*^9, 3.7584173813766675`*^9}, {
   3.7584174176706038`*^9, 3.758417419747034*^9}, 3.7584174588644247`*^9, {
   3.7584175183114595`*^9, 3.758417564385254*^9}, {3.7584176245563416`*^9, 
   3.758417881426403*^9}, {3.7584182427039156`*^9, 3.7584182619713335`*^9}, 
   3.7584182977616215`*^9, {3.7584183439541383`*^9, 3.758418381180271*^9}, {
   3.7584184740539007`*^9, 3.7584186184168324`*^9}, {3.7584186962816067`*^9, 
   3.7584187046481843`*^9}, {3.7584187351476316`*^9, 
   3.7584189366657515`*^9}, {3.7584189840271034`*^9, 3.758419004521953*^9}, {
   3.758419041291628*^9, 3.758419161273756*^9}, {3.758419193273181*^9, 
   3.7584192267357006`*^9}, {3.7584193071575823`*^9, 3.758419325228282*^9}, {
   3.758419362828734*^9, 3.7584195036960373`*^9}, {3.7584892013667874`*^9, 
   3.7584894634255905`*^9}, {3.758489508226313*^9, 3.7584895217475863`*^9}, 
   3.7584895953443465`*^9, {3.7584896888388853`*^9, 3.7584896942197685`*^9}, {
   3.758489738769107*^9, 3.75848974306242*^9}, {3.7584898103366213`*^9, 
   3.7584899736330605`*^9}, 3.7584900191756134`*^9, {3.7584902794934225`*^9, 
   3.758490290322757*^9}, {3.7584904128834963`*^9, 3.75849041337537*^9}, {
   3.7584904654631968`*^9, 3.7584905303713417`*^9}, {3.758490565960789*^9, 
   3.7584905674436836`*^9}, 3.75849063404605*^9, {3.758490686892232*^9, 
   3.758490735192299*^9}, {3.758490771459571*^9, 3.758490786631065*^9}, 
   3.758491306788491*^9, {3.7584913842101655`*^9, 3.7584914028575773`*^9}, {
   3.75849164512076*^9, 3.7584916602461305`*^9}, {3.75850065586444*^9, 
   3.7585006702208242`*^9}, {3.758500733607117*^9, 3.758501086132792*^9}, {
   3.758501122027742*^9, 3.7585011582558594`*^9}, {3.7585012076207323`*^9, 
   3.758501244664731*^9}, {3.7585012758235645`*^9, 3.758501347688826*^9}, {
   3.7585013880626135`*^9, 3.7585014060146885`*^9}, {3.758501473901845*^9, 
   3.7585016166319876`*^9}, {3.7585016537571135`*^9, 3.758501819067956*^9}, {
   3.758501880043106*^9, 3.7585019175497847`*^9}, {3.7585019561108327`*^9, 
   3.7585020448023825`*^9}, {3.7585020827114935`*^9, 
   3.7585021143030586`*^9}, {3.758502174689318*^9, 3.758502312545804*^9}, {
   3.7585023512810144`*^9, 3.758502365212169*^9}, {3.7585024022416425`*^9, 
   3.758502414275078*^9}, {3.758502451941194*^9, 3.758502490693137*^9}, {
   3.7585025860095525`*^9, 3.7585026396821938`*^9}, {3.758502676841853*^9, 
   3.758502739103411*^9}, {3.7585029238811836`*^9, 3.7585029510263357`*^9}, {
   3.7585030242641077`*^9, 3.758503060360155*^9}, {3.758503304468893*^9, 
   3.7585033622675247`*^9}, {3.7585034360607595`*^9, 3.75850351743337*^9}, {
   3.75850359598229*^9, 3.7585035960732865`*^9}, {3.7585036413286743`*^9, 
   3.758503801489644*^9}, {3.758503892683016*^9, 3.75850416454967*^9}, {
   3.7585042189832244`*^9, 3.758504232229273*^9}, {3.758504264820315*^9, 
   3.7585043196350937`*^9}, {3.758504364588207*^9, 3.758504471856819*^9}, {
   3.75850451607106*^9, 3.758504685757292*^9}, {3.7585047192016754`*^9, 
   3.758504720354193*^9}, {3.7585047540755625`*^9, 3.758504829223248*^9}, {
   3.758504899488899*^9, 3.7585049223962183`*^9}, {3.758505016100911*^9, 
   3.7585054005217094`*^9}, {3.7585054387223587`*^9, 
   3.7585054811407332`*^9}, {3.7585055138857203`*^9, 3.758505534133681*^9}, {
   3.7585056505368123`*^9, 3.7585058844073114`*^9}, {3.7585059300990515`*^9, 
   3.7585059514330263`*^9}, {3.7585059835530796`*^9, 3.758506033656315*^9}, {
   3.75850606447087*^9, 3.758506163469041*^9}, {3.7585063143024893`*^9, 
   3.758506335315321*^9}, {3.758506371088605*^9, 3.758506383321887*^9}, {
   3.7585064934622035`*^9, 3.7585065247794523`*^9}, {3.758506581235434*^9, 
   3.758506632313776*^9}, {3.758506680574645*^9, 3.758506835215974*^9}, {
   3.7585068853079696`*^9, 3.758506889093847*^9}, {3.7585069215091367`*^9, 
   3.7585070336800604`*^9}, {3.758507069405472*^9, 3.758507117546687*^9}, {
   3.7585071831611547`*^9, 3.758507277659323*^9}, {3.7585074921196465`*^9, 
   3.7585075023732195`*^9}, {3.7585077491570063`*^9, 
   3.7585079085319033`*^9}, {3.7585079481538887`*^9, 
   3.7585079730802426`*^9}, {3.7585080656126833`*^9, 
   3.7585081058091497`*^9}, {3.7585081367580624`*^9, 3.758508140273677*^9}, {
   3.758508182280278*^9, 3.7585081847656*^9}, {3.758508249682933*^9, 
   3.7585086309596214`*^9}, {3.758508663134516*^9, 3.758508819327959*^9}, {
   3.758508851882865*^9, 3.7585089112949963`*^9}, {3.758508968254548*^9, 
   3.7585090145397425`*^9}, {3.7585090455667353`*^9, 
   3.7585090563339214`*^9}, {3.758509114183161*^9, 3.7585091568530245`*^9}, {
   3.7585091921246524`*^9, 3.7585093371061387`*^9}, {3.7585093822273817`*^9, 
   3.758509411679626*^9}, 3.7585094539405713`*^9, 3.7585101366355505`*^9, {
   3.7585103156763573`*^9, 3.758510322704533*^9}, {3.7585103983361783`*^9, 
   3.75851042777844*^9}, {3.758510630327237*^9, 3.7585106831030674`*^9}, {
   3.758511415979581*^9, 3.758511419663726*^9}, {3.758511710253356*^9, 
   3.7585118364198275`*^9}, {3.758511937566243*^9, 3.758511944584461*^9}, 
   3.7585604668095427`*^9, 3.7585605562180395`*^9, {3.7585610095987854`*^9, 
   3.758561017565441*^9}, {3.758561118667226*^9, 3.7585611296649494`*^9}, {
   3.7585615284800997`*^9, 3.7585615978616686`*^9}, 3.7585641446697755`*^9, {
   3.758564658552495*^9, 3.758564660017125*^9}, {3.758565768839109*^9, 
   3.758565769712088*^9}, {3.7586662344994135`*^9, 3.7586662455299015`*^9}, {
   3.7586662808873296`*^9, 3.7586663016009016`*^9}, {3.75866735684059*^9, 
   3.758667518015753*^9}, {3.75866763103592*^9, 3.7586676641981306`*^9}, {
   3.758667697643776*^9, 3.758667709259268*^9}, {3.758667827447441*^9, 
   3.7586678619350414`*^9}, {3.7586678954068956`*^9, 
   3.7586678975328064`*^9}, {3.7586679388445034`*^9, 3.758668004847411*^9}, {
   3.758668036792506*^9, 3.758668083828415*^9}, {3.7586703584234953`*^9, 
   3.758670375110096*^9}, {3.7586704534270315`*^9, 3.758670537808776*^9}, {
   3.7586708707995353`*^9, 3.7586709008030915`*^9}, 3.758985355353965*^9, {
   3.758993836363488*^9, 3.758993861421774*^9}, {3.7589938981630487`*^9, 
   3.7589939050276375`*^9}, {3.758993966292843*^9, 3.7589939891497765`*^9}, {
   3.75899404266035*^9, 3.7589941040934277`*^9}, 3.758994151684142*^9, {
   3.7589942677237654`*^9, 3.7589943002102594`*^9}, {3.7589943373694973`*^9, 
   3.7589943580183916`*^9}, {3.758994480879939*^9, 3.758994528628882*^9}, {
   3.758994560480898*^9, 3.758994575110505*^9}, {3.758995177268767*^9, 
   3.758995265924862*^9}, {3.7590228942324295`*^9, 3.759022894786967*^9}, {
   3.7591001130647345`*^9, 3.759100133755414*^9}, 3.759100444963255*^9, 
   3.759247885653484*^9, 3.7592483361714706`*^9, {3.759248513153764*^9, 
   3.759248555499343*^9}, {3.7592485913906665`*^9, 3.759248745285178*^9}, 
   3.759248788242654*^9, {3.7592488230953474`*^9, 3.759248827281598*^9}, {
   3.759248924443578*^9, 3.7592490245315237`*^9}, {3.759249078065257*^9, 
   3.7592490973555117`*^9}, {3.7592491683782005`*^9, 
   3.7592493604469585`*^9}, {3.759249420976097*^9, 3.759249721201007*^9}, {
   3.7592498260872736`*^9, 3.7592499248170137`*^9}, {3.7592499742922688`*^9, 
   3.7592499747453814`*^9}, {3.7592500120129576`*^9, 
   3.7592500396516376`*^9}, {3.7592500830090685`*^9, 3.759250117644808*^9}, 
   3.7592504872039013`*^9, {3.7592510114341908`*^9, 3.759251326402528*^9}, 
   3.7592514056985292`*^9, {3.759253722372594*^9, 3.759253722424182*^9}, {
   3.759254906502903*^9, 3.759254927272847*^9}, {3.759255185916872*^9, 
   3.7592552134980717`*^9}, {3.7592554203350406`*^9, 3.759255420839863*^9}, {
   3.7592555015757923`*^9, 3.75925552579102*^9}, {3.7592555563230453`*^9, 
   3.7592555773799553`*^9}, {3.7592813551468964`*^9, 
   3.7592814102478323`*^9}, {3.7592815925744543`*^9, 
   3.7592816823716583`*^9}, {3.759281859095036*^9, 3.759281859168764*^9}, {
   3.759281929464196*^9, 3.759281929568967*^9}, {3.7592821616759644`*^9, 
   3.7592821953771143`*^9}, {3.7592822488144608`*^9, 
   3.7592823423830023`*^9}, {3.759282541988694*^9, 3.759282688896702*^9}, {
   3.7592828275298386`*^9, 3.759282843292348*^9}, {3.759282883311084*^9, 
   3.7592829649435*^9}, {3.759283211074186*^9, 3.7592833531748323`*^9}, {
   3.7592834562145357`*^9, 3.7592834838026333`*^9}, {3.759283775918186*^9, 
   3.759283864312471*^9}, {3.7592839128281465`*^9, 3.7592840335077705`*^9}, {
   3.7592840885289783`*^9, 3.759284234825205*^9}, {3.759284291834732*^9, 
   3.7592843977994633`*^9}, {3.759284460326318*^9, 3.7592845044555473`*^9}, {
   3.7592845635617104`*^9, 3.759284566623009*^9}, {3.7592846124008865`*^9, 
   3.759284769281293*^9}, {3.759284805301092*^9, 3.759284880710876*^9}, {
   3.759284916399912*^9, 3.7592849172106256`*^9}, {3.7592849965147066`*^9, 
   3.759285059828673*^9}, {3.7593381563282185`*^9, 3.7593382438908544`*^9}, {
   3.7593383075061197`*^9, 3.759338398005317*^9}, 3.7593384537455616`*^9, {
   3.7593385520381446`*^9, 3.759338560205685*^9}, {3.7593386387908573`*^9, 
   3.7593389256131725`*^9}, {3.7593389902821884`*^9, 
   3.7593390966430016`*^9}, {3.759339207181617*^9, 3.7593392288147726`*^9}, {
   3.7593393028449287`*^9, 3.759339326796339*^9}, {3.7593393635878983`*^9, 
   3.759339458025084*^9}, {3.7593395009765615`*^9, 3.7593396730497847`*^9}, {
   3.759339729039962*^9, 3.7593397731232767`*^9}, {3.759339824682308*^9, 
   3.759339926002699*^9}, {3.7593401641134076`*^9, 3.7593402123146563`*^9}, {
   3.7593403731412525`*^9, 3.759340611106203*^9}, {3.759340715441369*^9, 
   3.7593407157697744`*^9}, {3.759340791456993*^9, 3.759341326749669*^9}, {
   3.7593413740725355`*^9, 3.759341444886984*^9}, {3.7593414932851048`*^9, 
   3.7593415189699707`*^9}, {3.759341553773408*^9, 3.759341659374923*^9}, {
   3.7593416948760443`*^9, 3.7593417685960803`*^9}, {3.759341832962732*^9, 
   3.759341936066253*^9}, {3.759342007517601*^9, 3.759342009385812*^9}, {
   3.759342090552283*^9, 3.7593421707238197`*^9}, {3.7593422144590073`*^9, 
   3.7593422570541005`*^9}, {3.7593423553805733`*^9, 
   3.7593424141936283`*^9}, {3.7593424593979053`*^9, 
   3.7593424962028913`*^9}, {3.7593425532186823`*^9, 3.759342568660458*^9}, {
   3.759342625122966*^9, 3.7593427152968817`*^9}, {3.7593428340879655`*^9, 
   3.759342964202026*^9}, {3.7593440554489546`*^9, 3.759344100333704*^9}, {
   3.7593441805734243`*^9, 3.759344262971775*^9}, {3.7593443134113855`*^9, 
   3.759344353348732*^9}, {3.7593443937032013`*^9, 3.759344398530258*^9}, {
   3.7593444436065907`*^9, 3.759344528967575*^9}, {3.7593445934124656`*^9, 
   3.7593446621479664`*^9}, {3.759346003138425*^9, 3.7593460783232126`*^9}, {
   3.7593461145675516`*^9, 3.7593461743369427`*^9}, {3.7594239186127777`*^9, 
   3.7594239470777245`*^9}, {3.7594239963156643`*^9, 3.759424188604268*^9}, {
   3.7594242245757113`*^9, 3.759424249194851*^9}, {3.759424286125065*^9, 
   3.7594243736463213`*^9}, 3.7594244140851817`*^9, {3.7594244988575783`*^9, 
   3.759424535411516*^9}, {3.759424568230735*^9, 3.7594249277194524`*^9}, {
   3.7594250411957073`*^9, 3.759425149519202*^9}, {3.759425226101635*^9, 
   3.7594253679807506`*^9}, {3.7594254169972687`*^9, 3.759425419487363*^9}, {
   3.7594254851469088`*^9, 3.759425495439892*^9}, {3.7594255255273676`*^9, 
   3.759425541525481*^9}, {3.7594255719534483`*^9, 3.759425685768879*^9}, {
   3.7594257521092844`*^9, 3.7594258016808376`*^9}, {3.759425916245056*^9, 
   3.75942594498285*^9}, {3.7594259812474566`*^9, 3.759425991991101*^9}, {
   3.759426077989338*^9, 3.7594261016550803`*^9}, {3.75942613328777*^9, 
   3.759426291756454*^9}, {3.759426323031296*^9, 3.759426427690627*^9}, {
   3.759426460563654*^9, 3.759426514082663*^9}, {3.7594265718996167`*^9, 
   3.759426710659936*^9}, {3.759428189470539*^9, 3.7594281905705647`*^9}, {
   3.7594282429614086`*^9, 3.7594284693885803`*^9}, {3.759429148388708*^9, 
   3.759429168154831*^9}, {3.7594291981645513`*^9, 3.759429277782557*^9}, {
   3.7594293165348854`*^9, 3.759429443291787*^9}, {3.7594294873200026`*^9, 
   3.759429666049878*^9}, {3.759435514780633*^9, 3.75943555693313*^9}, {
   3.759435602140416*^9, 3.759435778493034*^9}, 3.759435827572172*^9, {
   3.7594358627619815`*^9, 3.759436268161866*^9}, {3.7594363078020515`*^9, 
   3.759436378862551*^9}, {3.759436467463929*^9, 3.759436909555382*^9}, {
   3.7594369556150603`*^9, 3.7594371096116056`*^9}, {3.759437197302455*^9, 
   3.75943734459072*^9}, {3.759437392484331*^9, 3.7594374504561386`*^9}, {
   3.759437539880826*^9, 3.7594376158341236`*^9}, {3.7594376963905745`*^9, 
   3.7594377406053095`*^9}, {3.759437814247446*^9, 3.7594379595701065`*^9}, {
   3.7594490979156604`*^9, 3.759449159182903*^9}, {3.759511837517056*^9, 
   3.759511927243884*^9}, {3.759512138948804*^9, 3.759512140505653*^9}, {
   3.7595122229470916`*^9, 3.75951226328518*^9}, {3.759512411932535*^9, 
   3.7595124324915648`*^9}, {3.7595130814257326`*^9, 
   3.7595130820132027`*^9}, {3.759513427919196*^9, 3.7595134437453675`*^9}, {
   3.759513474104084*^9, 3.7595134889424086`*^9}, {3.7595136011448298`*^9, 
   3.7595136455903444`*^9}, 3.759513676864445*^9, {3.7595137733023357`*^9, 
   3.759513808801409*^9}, {3.759513840160431*^9, 3.759513850938825*^9}, {
   3.759513916290474*^9, 3.759513986528276*^9}, {3.7595140178524466`*^9, 
   3.759514045012308*^9}, {3.75951407747702*^9, 3.7595140888544846`*^9}, {
   3.7595141868152065`*^9, 3.7595142113254623`*^9}, {3.7595143386517873`*^9, 
   3.7595144219206767`*^9}, {3.759514464578771*^9, 3.759514468878092*^9}, {
   3.7595145468306513`*^9, 3.759514575040156*^9}, {3.759514730332161*^9, 
   3.7595148648717785`*^9}, {3.7595154315429068`*^9, 3.759515468789931*^9}, {
   3.759515592799649*^9, 3.7595158637390485`*^9}, {3.7595158968463206`*^9, 
   3.759516055459955*^9}, {3.759516171586017*^9, 3.759516215062129*^9}, {
   3.7595162628887978`*^9, 3.7595163921445575`*^9}, {3.759516498988671*^9, 
   3.7595166787108192`*^9}, {3.7595167092174463`*^9, 
   3.7595168720044146`*^9}, {3.759516993144416*^9, 3.7595169935474997`*^9}, {
   3.7595170329276667`*^9, 3.7595179175577927`*^9}, {3.7595179492202387`*^9, 
   3.759517969179762*^9}, {3.759518019154838*^9, 3.759518077324933*^9}, {
   3.7595181093260937`*^9, 3.7595182812419176`*^9}, {3.759518313386882*^9, 
   3.7595185350409975`*^9}, {3.7595185678163757`*^9, 
   3.7595188147979527`*^9}, {3.7595188926101165`*^9, 3.759518929117996*^9}, {
   3.759518962485975*^9, 3.759519235235623*^9}, {3.759519537132841*^9, 
   3.759519627963295*^9}, {3.7595198784535584`*^9, 3.7595201251593204`*^9}, {
   3.759520173319667*^9, 3.7595203038476105`*^9}, {3.7595203768496227`*^9, 
   3.759520377423972*^9}, {3.7595204485140533`*^9, 3.7595204490180774`*^9}, {
   3.7595213468483305`*^9, 3.7595214246436634`*^9}, {3.7595214856834764`*^9, 
   3.7595215064136186`*^9}, {3.759521564712308*^9, 3.7595215978354273`*^9}, {
   3.759521726453168*^9, 3.759521740869789*^9}, {3.7595218792532797`*^9, 
   3.7595219340689197`*^9}, 3.759521978436984*^9, {3.759522168044664*^9, 
   3.7595222489002705`*^9}, {3.759522280228612*^9, 3.759522316052005*^9}, {
   3.7595223719722366`*^9, 3.759522376145172*^9}, {3.7595224363041124`*^9, 
   3.7595224823210163`*^9}, {3.7595225173199883`*^9, 
   3.7595225517305703`*^9}, {3.7595226082920103`*^9, 3.7595227535655484`*^9}, 
   3.7595227966820507`*^9, {3.759522876940198*^9, 3.759522931008716*^9}, {
   3.759522972931368*^9, 3.759523030161428*^9}, {3.7595230932262526`*^9, 
   3.7595231989068184`*^9}, {3.7595232587862196`*^9, 3.759523302890063*^9}, {
   3.7595233961667957`*^9, 3.7595233968583865`*^9}, {3.759523649659154*^9, 
   3.7595236967361517`*^9}, {3.759523731981654*^9, 3.759523788327798*^9}, {
   3.759523819415129*^9, 3.759523959218508*^9}, {3.759524048534442*^9, 
   3.7595241068559275`*^9}, 3.759527762574919*^9, {3.7595278313266706`*^9, 
   3.759527836765634*^9}, {3.759527917784052*^9, 3.759527923971202*^9}, {
   3.759528151485941*^9, 3.759528306755015*^9}, {3.7595283487279496`*^9, 
   3.759528458409117*^9}, {3.7595285124509344`*^9, 3.759528522134733*^9}, {
   3.7595285635249104`*^9, 3.7595285751799564`*^9}, {3.7595286619129186`*^9, 
   3.759528708725238*^9}, {3.7595287617479477`*^9, 3.759528780303387*^9}, {
   3.75952884115191*^9, 3.7595288650239563`*^9}, {3.759528901514801*^9, 
   3.7595290069741507`*^9}, {3.7595291416130376`*^9, 3.759529143054882*^9}, {
   3.7595293561609397`*^9, 3.759529365790921*^9}, {3.7595294237503376`*^9, 
   3.75952943608843*^9}, {3.7595296227299404`*^9, 3.7595297161280346`*^9}, {
   3.759529766257991*^9, 3.759529805817032*^9}, {3.7595301962915487`*^9, 
   3.759530197209834*^9}, {3.7595302355902424`*^9, 3.7595303343447113`*^9}, {
   3.7595303757706795`*^9, 3.759530386570903*^9}, {3.759530507021141*^9, 
   3.759530516234169*^9}, {3.759530563372744*^9, 3.7595305636298113`*^9}, {
   3.7595306393505545`*^9, 3.7595306746977882`*^9}, {3.7595307147649364`*^9, 
   3.759530806879465*^9}, {3.7595308370526247`*^9, 3.759530957936304*^9}, {
   3.7595309988936634`*^9, 3.759531005529891*^9}, {3.75953109209453*^9, 
   3.7595311629028435`*^9}, {3.7595312743108463`*^9, 3.759531390182948*^9}, {
   3.7595314933039923`*^9, 3.759531636299367*^9}, {3.7595317253588896`*^9, 
   3.7595317286334257`*^9}, {3.7595321192821407`*^9, 
   3.7595321279948206`*^9}, {3.7595321594935694`*^9, 3.759532166487652*^9}, {
   3.759532387856442*^9, 3.7595324125308046`*^9}, {3.7595324571173735`*^9, 
   3.7595324695007253`*^9}, {3.7595326744995337`*^9, 
   3.7595326758429585`*^9}, {3.7595327263120856`*^9, 3.759532757409298*^9}, {
   3.75953281330892*^9, 3.7595328260442247`*^9}, {3.759532871262162*^9, 
   3.7595328725042825`*^9}, {3.759533102210019*^9, 3.7595331216749463`*^9}, {
   3.7595331585662756`*^9, 3.759533158728841*^9}, {3.759533208982383*^9, 
   3.7595333029330487`*^9}, {3.759533376175079*^9, 3.759533376827365*^9}, {
   3.759533420713962*^9, 3.7595335237912083`*^9}, {3.759533566009268*^9, 
   3.7595336011113744`*^9}, {3.7595336377583447`*^9, 
   3.7595336886877317`*^9}, {3.759533729203309*^9, 3.7595338553797956`*^9}, {
   3.7595339746217995`*^9, 3.759533977955894*^9}, {3.7595442767691293`*^9, 
   3.759544287723179*^9}, {3.7595443370089912`*^9, 3.759544348853711*^9}, {
   3.7595444252285223`*^9, 3.7595445669989276`*^9}, {3.7595454564380264`*^9, 
   3.7595455581790953`*^9}, {3.759545603027424*^9, 3.759545765079834*^9}, {
   3.7595459042176156`*^9, 3.759545927071474*^9}, {3.759545957264697*^9, 
   3.7595459883707714`*^9}, {3.759546063857812*^9, 3.7595460769278517`*^9}, {
   3.7595462321107054`*^9, 3.7595462925949163`*^9}, 3.759546350466091*^9, {
   3.759600256291568*^9, 3.759600321117424*^9}, {3.7596003517571664`*^9, 
   3.759600377532605*^9}, {3.75961671776824*^9, 3.7596167442194347`*^9}, {
   3.759879261748144*^9, 3.7598792669791374`*^9}, {3.759879320678483*^9, 
   3.7598794880038548`*^9}, {3.7598795634546547`*^9, 
   3.7598796043382993`*^9}, {3.75987963717344*^9, 3.7598798327622085`*^9}, {
   3.759879871295127*^9, 3.7598798904079933`*^9}, {3.7598799335595555`*^9, 
   3.7598800932114687`*^9}, {3.759880127535601*^9, 3.759880201874392*^9}, {
   3.7598802473138323`*^9, 3.7598803435444016`*^9}, {3.759880379115903*^9, 
   3.7598804652455378`*^9}, {3.759880509975004*^9, 3.759880566557635*^9}, {
   3.7598806593204784`*^9, 3.7598807058938837`*^9}, {3.759880745244628*^9, 
   3.7598807603910923`*^9}, {3.759880797928675*^9, 3.759880923909667*^9}, {
   3.759881003984434*^9, 3.759881031915715*^9}, {3.759881148199647*^9, 
   3.75988115893093*^9}, {3.759881313365782*^9, 3.759881323392947*^9}, {
   3.759881418996108*^9, 3.759881490905723*^9}, {3.7598815464202137`*^9, 
   3.7598816083265963`*^9}, {3.759881662752003*^9, 3.7598816645372458`*^9}, {
   3.7598817124790025`*^9, 3.759881717672095*^9}, {3.759881751432763*^9, 
   3.7598817787586637`*^9}, {3.759881933368064*^9, 3.7598819689029894`*^9}, 
   3.759882750739394*^9, {3.759882862064612*^9, 3.759882870379367*^9}, {
   3.75989193082858*^9, 3.759891952772343*^9}, 3.7598920060035334`*^9, {
   3.7598920655813274`*^9, 3.759892068104963*^9}, {3.759892103033097*^9, 
   3.7598922038500805`*^9}, {3.759892251485454*^9, 3.7598922633947687`*^9}, {
   3.7598923135314655`*^9, 3.759892332114749*^9}, {3.759892371245985*^9, 
   3.75989237270968*^9}, {3.7598924310172815`*^9, 3.759892436277625*^9}, {
   3.7598924664712086`*^9, 3.759892478552104*^9}, {3.7598925294986815`*^9, 
   3.759892700124299*^9}, {3.7598927379505587`*^9, 3.7598927380550585`*^9}, {
   3.759892779701107*^9, 3.7598927906958528`*^9}, {3.7598928312242737`*^9, 
   3.759892922873705*^9}, {3.759892957052809*^9, 3.759893005313693*^9}, {
   3.759893035499666*^9, 3.7598930618403606`*^9}, {3.7598931619821386`*^9, 
   3.7598931642109823`*^9}, {3.759893244413124*^9, 3.7598934315689497`*^9}, {
   3.759894804378513*^9, 3.7598948048194056`*^9}, {3.7598948555133257`*^9, 
   3.7598948843889384`*^9}, {3.759894917692691*^9, 3.759894986118718*^9}, {
   3.759895727927204*^9, 3.759895774546562*^9}, {3.7598958136608496`*^9, 
   3.7598958554211125`*^9}, {3.7598959337151203`*^9, 3.759895936952347*^9}, {
   3.7598959771668572`*^9, 3.7598959867942753`*^9}, {3.75989629863169*^9, 
   3.759896298740589*^9}, {3.759896335476549*^9, 3.7598963380032425`*^9}, {
   3.759896374996458*^9, 3.759896395837621*^9}, 3.7598964271282797`*^9, {
   3.759896530651904*^9, 3.7598965307928696`*^9}, {3.7598965674162874`*^9, 
   3.759896582058872*^9}, {3.75989662625138*^9, 3.7598966266236267`*^9}, {
   3.759896701651778*^9, 3.7598967041096835`*^9}, {3.7598967389903383`*^9, 
   3.759896739551729*^9}, {3.7598970386247845`*^9, 3.7598971378692255`*^9}, {
   3.7598971796356745`*^9, 3.7598971911004677`*^9}, {3.7598972987978597`*^9, 
   3.759897305438613*^9}, {3.759898245743252*^9, 3.7598982458746085`*^9}, {
   3.759898470649926*^9, 3.75989853357081*^9}, {3.7598987138091717`*^9, 
   3.7598987912057514`*^9}, {3.759898881503311*^9, 3.759898999189068*^9}, {
   3.7598990878300943`*^9, 3.7598991371081686`*^9}, {3.759899181220006*^9, 
   3.7598992034866047`*^9}, {3.7598992752787695`*^9, 3.759899380670268*^9}, {
   3.7599047302084084`*^9, 3.7599048871577024`*^9}, {3.759904964244022*^9, 
   3.759905074049103*^9}, {3.7599051361547346`*^9, 3.759905157948185*^9}, {
   3.759905192574602*^9, 3.7599052181815042`*^9}, {3.7599052526275363`*^9, 
   3.7599053121028414`*^9}, 3.7599053663610106`*^9, {3.759905401506139*^9, 
   3.7599055699012136`*^9}, {3.7599056161956887`*^9, 
   3.7599056815914545`*^9}, {3.7599057446816916`*^9, 
   3.7599057571920567`*^9}, {3.759905788049148*^9, 3.759905931517558*^9}, {
   3.759905985385539*^9, 3.759906300443139*^9}, {3.75990639323835*^9, 
   3.759906406375613*^9}, {3.7599064702183657`*^9, 3.7599065230686913`*^9}, {
   3.7599438975165477`*^9, 3.7599438986179085`*^9}, {3.760124583542036*^9, 
   3.7601247729414215`*^9}, {3.76012482635666*^9, 3.7601248287089396`*^9}, {
   3.7601248946729975`*^9, 3.760124991599633*^9}, {3.760204699905017*^9, 
   3.7602047036044817`*^9}, {3.760204735126958*^9, 3.760204741672428*^9}, {
   3.760205167730256*^9, 3.7602051849228*^9}, {3.7602053012228417`*^9, 
   3.7602053042148795`*^9}, {3.760205451799266*^9, 3.7602054794870195`*^9}, {
   3.760228032877874*^9, 3.7602280400155535`*^9}, {3.7602280905353746`*^9, 
   3.760228213395651*^9}, {3.76022825624957*^9, 3.760228392642308*^9}, {
   3.760228643688727*^9, 3.76022864915361*^9}, {3.7602286978714266`*^9, 
   3.760228698236037*^9}, {3.7602287500427327`*^9, 3.7602288249001975`*^9}, {
   3.760228920567938*^9, 3.7602290114785233`*^9}, {3.760229060630335*^9, 
   3.760229081227908*^9}, {3.760229118483594*^9, 3.760229127153194*^9}, 
   3.7602292046347227`*^9, 3.7604614117138186`*^9, {3.7604614997184935`*^9, 
   3.760461579156189*^9}, {3.760461653938499*^9, 3.7604616591795197`*^9}, {
   3.760461743977453*^9, 3.7604617517532916`*^9}, 3.760461848052978*^9, {
   3.760461932033738*^9, 3.7604621918918877`*^9}, {3.760462236073675*^9, 
   3.7604622504806986`*^9}, {3.7604622929069266`*^9, 3.7604624012422853`*^9}, 
   3.7604624859847145`*^9, {3.7604626068810825`*^9, 3.7604626075072336`*^9}, {
   3.7604626405863466`*^9, 3.760462680891759*^9}, {3.760462887739936*^9, 
   3.760462914776655*^9}, {3.7604629513867807`*^9, 3.760462979882369*^9}, 
   3.7604636562748847`*^9, {3.7604637147623105`*^9, 3.760463750011648*^9}, {
   3.760464039582097*^9, 3.7604640400823603`*^9}, {3.7604640887822957`*^9, 
   3.7604640889395733`*^9}, {3.7604642639023*^9, 3.7604643063543158`*^9}, 
   3.76046562238375*^9, 3.760465654426764*^9, {3.760465810047326*^9, 
   3.7604658357851496`*^9}, {3.760465919147158*^9, 3.760465991176947*^9}, {
   3.7604660329123325`*^9, 3.7604660345107923`*^9}, 3.7604661239986258`*^9, {
   3.760466238693209*^9, 3.760466256426749*^9}, {3.7604663133437705`*^9, 
   3.760466324548186*^9}, {3.760466405201284*^9, 3.7604664262320843`*^9}, {
   3.7604665666635857`*^9, 3.7604665739284678`*^9}, {3.760473097285477*^9, 
   3.7604731660087423`*^9}, {3.76047320253456*^9, 3.7604732702949147`*^9}, 
   3.760802520857237*^9, {3.7608031911233716`*^9, 3.760803192949503*^9}, {
   3.760803227012476*^9, 3.7608032284616013`*^9}, {3.760803271786775*^9, 
   3.760803273240919*^9}, {3.76080349873444*^9, 3.760803503670249*^9}, {
   3.7608039187081013`*^9, 3.7608040587029805`*^9}, {3.7608041589261427`*^9, 
   3.760804183517446*^9}, {3.7608042175973487`*^9, 3.7608042830533924`*^9}, {
   3.760804331681471*^9, 3.7608045375682697`*^9}, {3.760804635545429*^9, 
   3.760804637311714*^9}, {3.760805199368662*^9, 3.7608053718646836`*^9}, {
   3.7608054701300783`*^9, 3.7608055317434225`*^9}, {3.7608057549588704`*^9, 
   3.760805775476075*^9}, {3.7608060789969444`*^9, 3.760806081970999*^9}, {
   3.760806122545581*^9, 3.7608061766230574`*^9}, {3.760806227307598*^9, 
   3.760806268362892*^9}, {3.760806327806023*^9, 3.7608063850390425`*^9}, {
   3.760806500127515*^9, 3.7608065293743515`*^9}, 3.7608067857143097`*^9, {
   3.7608069160958815`*^9, 3.7608070542971573`*^9}, {3.760807117573047*^9, 
   3.760807137901722*^9}, {3.7608072086895523`*^9, 3.7608072695668592`*^9}, {
   3.760807310208252*^9, 3.7608073187344627`*^9}, {3.760807402851695*^9, 
   3.76080744469388*^9}, {3.760807484735873*^9, 3.7608075354812555`*^9}, {
   3.7608075828207617`*^9, 3.760807608913022*^9}, {3.7608076806114225`*^9, 
   3.7608077059197893`*^9}, {3.760807793042952*^9, 3.760807826457662*^9}, {
   3.760807976972418*^9, 3.7608080685586634`*^9}, {3.7608081081828003`*^9, 
   3.7608083983772535`*^9}, 3.760808733236337*^9, {3.760808956087768*^9, 
   3.7608089665737524`*^9}, {3.760808997534007*^9, 3.7608090716878448`*^9}, {
   3.760809126715698*^9, 3.760809295082739*^9}, {3.760809325957794*^9, 
   3.7608093422950544`*^9}, {3.760809451697303*^9, 3.7608096506068125`*^9}, {
   3.7608096839308777`*^9, 3.7608098375113506`*^9}, {3.760809876124142*^9, 
   3.7608101674160023`*^9}, {3.760810217538806*^9, 3.7608102340570655`*^9}, {
   3.7608103251487494`*^9, 3.760810331380263*^9}, {3.7608103797163906`*^9, 
   3.7608103829272056`*^9}, {3.7608104294992485`*^9, 3.76081042956841*^9}, {
   3.760810727316646*^9, 3.760810728624942*^9}, {3.760810953248043*^9, 
   3.760811029958906*^9}, {3.7608110617368765`*^9, 3.760811073767987*^9}, {
   3.7608111066945667`*^9, 3.7608111111961594`*^9}, {3.7608112292283545`*^9, 
   3.760811244927994*^9}, {3.7608113529758415`*^9, 3.760811361302375*^9}, 
   3.7608116483683367`*^9, {3.761073211224723*^9, 3.7610732271844077`*^9}, {
   3.7610732750312414`*^9, 3.7610733104560375`*^9}, {3.761073699343668*^9, 
   3.7610737125585794`*^9}, {3.761073832727558*^9, 3.761073893162142*^9}, {
   3.761073944251996*^9, 3.761074047517826*^9}, {3.7610741270195756`*^9, 
   3.761074198042921*^9}, 3.761074292713577*^9, {3.761074353524438*^9, 
   3.761074355281806*^9}, 3.7610743981533003`*^9, {3.76107451817702*^9, 
   3.761074521742878*^9}, {3.761083687375061*^9, 3.76108383016304*^9}, {
   3.761083872874728*^9, 3.7610839573566833`*^9}, {3.7610839964311333`*^9, 
   3.761084003132203*^9}, {3.761084065386632*^9, 3.7610840691505613`*^9}, {
   3.7610841072825327`*^9, 3.761084147244639*^9}, {3.7610841847492576`*^9, 
   3.7610842200548267`*^9}, {3.7610842975394707`*^9, 
   3.7610843098016615`*^9}, {3.761084351541012*^9, 3.7610843690810804`*^9}, {
   3.761084482560489*^9, 3.7610845408475018`*^9}, {3.7610845775572796`*^9, 
   3.7610846782817745`*^9}, {3.7610847140550585`*^9, 3.761084717249511*^9}, {
   3.761084747322093*^9, 3.761084764939907*^9}, {3.761084823498226*^9, 
   3.761084827759823*^9}, {3.7610849642296753`*^9, 3.761084996190161*^9}, {
   3.761085037523967*^9, 3.761085083960684*^9}, {3.7610851330583487`*^9, 
   3.7610851387770143`*^9}, {3.7610852988736506`*^9, 3.761085328342802*^9}, {
   3.7610853894981704`*^9, 3.761085389749529*^9}, {3.7610854945740232`*^9, 
   3.761085505318309*^9}, {3.7610856725418425`*^9, 3.7610857233548837`*^9}, {
   3.761086100687273*^9, 3.7610861007361403`*^9}, {3.7610861360357227`*^9, 
   3.761086136299986*^9}, {3.7610862331319265`*^9, 3.761086243844267*^9}, {
   3.761086289221819*^9, 3.7610863758271427`*^9}, {3.761086424603583*^9, 
   3.7610864926395426`*^9}, {3.761086543093545*^9, 3.761086589566201*^9}, {
   3.7610877438577127`*^9, 3.7610877490847263`*^9}, {3.761087950544689*^9, 
   3.7610879517305164`*^9}, {3.761088040789256*^9, 3.7610880778121643`*^9}, {
   3.7610881474498386`*^9, 3.761088209495825*^9}, {3.761088303011608*^9, 
   3.7610883205377145`*^9}, {3.761088452315123*^9, 3.7610884544563932`*^9}, {
   3.761088490498989*^9, 3.761088529491626*^9}, {3.7610885877427645`*^9, 
   3.7610885910648766`*^9}, {3.7610886955114145`*^9, 
   3.7610887655011454`*^9}, {3.761088852924231*^9, 3.76108887798717*^9}, 
   3.7610889122694435`*^9, {3.7610889425205016`*^9, 3.7610890514630094`*^9}, {
   3.761089148229097*^9, 3.7610891583520107`*^9}, {3.76108921391634*^9, 
   3.7610892161334076`*^9}, {3.761144854501202*^9, 3.7611448646861267`*^9}, {
   3.7611449135844836`*^9, 3.76114491735855*^9}, {3.761144998873226*^9, 
   3.7611450858166685`*^9}, {3.761145163196786*^9, 3.7611452213757033`*^9}, {
   3.761146468035387*^9, 3.761146570841277*^9}, {3.7611466147737985`*^9, 
   3.761146634718646*^9}, {3.7611467644929676`*^9, 3.7611468703752146`*^9}, {
   3.7611469054472494`*^9, 3.7611469099922805`*^9}, {3.76114699628905*^9, 
   3.761147027691447*^9}, {3.7611472243960743`*^9, 3.7611472362840295`*^9}, {
   3.7611473168057566`*^9, 3.7611473217266436`*^9}, {3.7611475161323657`*^9, 
   3.7611475266698785`*^9}, {3.761147599931134*^9, 3.7611476409212885`*^9}, {
   3.761147696225484*^9, 3.7611478358695283`*^9}, {3.7611478970959744`*^9, 
   3.761147921580243*^9}, {3.761147954710438*^9, 3.761148007173131*^9}, {
   3.761269490455222*^9, 3.761269562374264*^9}, 3.7612696143860188`*^9, {
   3.761269795980111*^9, 3.7612698943973665`*^9}, {3.761269949812039*^9, 
   3.7612699857538404`*^9}, {3.7612700571493797`*^9, 
   3.7612701452039623`*^9}, {3.7612701943693733`*^9, 3.761270201143923*^9}, {
   3.7612704015968137`*^9, 3.7612704016925616`*^9}, {3.761270442459391*^9, 
   3.7612704750981407`*^9}, {3.761270540234459*^9, 3.7612706195100503`*^9}, {
   3.7612706623303127`*^9, 3.761270662439023*^9}, {3.7612708665942698`*^9, 
   3.7612708668326454`*^9}, {3.7612709183936725`*^9, 3.761270919360087*^9}, {
   3.761271012166765*^9, 3.761271018157707*^9}, {3.761271066618042*^9, 
   3.761271097563285*^9}, {3.7612744660281506`*^9, 3.761274466191681*^9}, 
   3.7612745392346344`*^9, {3.761274659436743*^9, 3.7612747454378495`*^9}, {
   3.7612748172250924`*^9, 3.7612748330133905`*^9}, {3.7612748702876596`*^9, 
   3.7612749416702604`*^9}, {3.76127541436875*^9, 3.761275468904827*^9}, {
   3.7618583568875012`*^9, 3.761858424945181*^9}, {3.761858533587614*^9, 
   3.7618585433893795`*^9}, {3.7618585807782907`*^9, 3.761858587384611*^9}, {
   3.761858766043994*^9, 3.7618588056171427`*^9}, {3.7618589424945655`*^9, 
   3.761859080318716*^9}, {3.7618591661684675`*^9, 3.7618594596402836`*^9}, {
   3.7618595147891693`*^9, 3.761859560736728*^9}, {3.761859640662611*^9, 
   3.761859657384416*^9}, {3.7618597317465053`*^9, 3.7618597370455475`*^9}, {
   3.7618597937486506`*^9, 3.7618597981335163`*^9}, {3.7618598825600796`*^9, 
   3.7618599442715006`*^9}, {3.761859994955676*^9, 3.7618599952366147`*^9}, {
   3.7618600340719376`*^9, 3.761860048924882*^9}, {3.761860095218058*^9, 
   3.7618601194504347`*^9}, {3.7618601855734067`*^9, 3.7618602624903755`*^9}, 
   3.7618602978616147`*^9, {3.761860332507059*^9, 3.7618604468461127`*^9}, {
   3.7618605455907145`*^9, 3.7618606929996877`*^9}, {3.7618607782826867`*^9, 
   3.761860845145072*^9}, {3.7618608922163177`*^9, 3.7618609904125714`*^9}, {
   3.7618610969574814`*^9, 3.7618611331123133`*^9}, 3.76186116472301*^9, {
   3.7618611962450533`*^9, 3.7618612427243943`*^9}, {3.7618612842962418`*^9, 
   3.7618614399186335`*^9}, {3.7618614785464153`*^9, 
   3.7618614874322677`*^9}, {3.761861517525762*^9, 3.7618615316474423`*^9}, {
   3.761861565762741*^9, 3.7618616218403983`*^9}, {3.761861801479927*^9, 
   3.761861802034762*^9}, {3.761863087682332*^9, 3.761863139418439*^9}, {
   3.761863339123071*^9, 3.7618633427644672`*^9}, {3.761863374601504*^9, 
   3.7618634117661643`*^9}, {3.7618635161192303`*^9, 
   3.7618635288647747`*^9}, {3.7618635723963213`*^9, 3.761863589998225*^9}, {
   3.7618636239633627`*^9, 3.761863672554378*^9}, {3.761863720135084*^9, 
   3.761863752472576*^9}, {3.7618638147938647`*^9, 3.7618638555757713`*^9}, {
   3.7618639998537955`*^9, 3.7618642139510407`*^9}, {3.7618642579981976`*^9, 
   3.761864369842991*^9}, {3.7618644040065966`*^9, 3.761864408880561*^9}, {
   3.761864493649784*^9, 3.761864535711275*^9}, {3.7618645846244173`*^9, 
   3.7618646456960316`*^9}, {3.7618647687717795`*^9, 
   3.7618647923726473`*^9}, {3.761864832770574*^9, 3.7618648338536835`*^9}, {
   3.7618649254755707`*^9, 3.7618649452756033`*^9}, {3.7618650479259586`*^9, 
   3.7618650504801564`*^9}, {3.7618651289003673`*^9, 3.76186521776266*^9}, {
   3.7618653944409957`*^9, 3.7618655516085443`*^9}, {3.761865648715767*^9, 
   3.761865658714018*^9}, {3.7618657041325116`*^9, 3.76186571174415*^9}, {
   3.761865771800458*^9, 3.761865771897235*^9}, {3.761867224774253*^9, 
   3.7618672257955503`*^9}, {3.7619422374557734`*^9, 3.761942241208082*^9}, {
   3.7619424577716513`*^9, 3.761942468168468*^9}, {3.7619426680645647`*^9, 
   3.7619426915391626`*^9}, {3.7619427317935495`*^9, 
   3.7619428844472275`*^9}, {3.7619429261701856`*^9, 
   3.7619429727059517`*^9}, {3.76194305839128*^9, 3.7619430677017393`*^9}, {
   3.761943101582734*^9, 3.761943181005945*^9}, {3.7619432156947827`*^9, 
   3.761943215783622*^9}, {3.7619432676194544`*^9, 3.761943267950822*^9}, {
   3.761943306741083*^9, 3.761943330199728*^9}, {3.7619433744683294`*^9, 
   3.761943374709741*^9}, {3.761943474240053*^9, 3.7619434820153756`*^9}, {
   3.7619437732615223`*^9, 3.7619437809637437`*^9}, {3.7619438507773347`*^9, 
   3.761943855009209*^9}, {3.7619448025922594`*^9, 3.761944813422023*^9}, {
   3.761944847644307*^9, 3.761945120440892*^9}, {3.7619454279644933`*^9, 
   3.761945470778317*^9}, 3.761945531069718*^9, {3.7619456245094337`*^9, 
   3.761945653327819*^9}, {3.7619457791623416`*^9, 3.7619458123221064`*^9}, {
   3.761945891676267*^9, 3.761945934905717*^9}, {3.761945977573308*^9, 
   3.761946093948121*^9}, {3.7619461247801523`*^9, 3.761946125138601*^9}, {
   3.7619461586959968`*^9, 3.761946225017173*^9}, {3.7619466854780097`*^9, 
   3.7619466981398106`*^9}, {3.7619467284633913`*^9, 3.761946786821663*^9}, {
   3.7619468394137926`*^9, 3.7619468533695545`*^9}, {3.761946895977069*^9, 
   3.761946903789543*^9}, {3.761946987052059*^9, 3.761946987621007*^9}, {
   3.7619471664231305`*^9, 3.7619472184597006`*^9}, {3.761947297725829*^9, 
   3.7619473110484743`*^9}, {3.761947372877421*^9, 3.7619473785474887`*^9}, {
   3.7619476282636137`*^9, 3.7619476286244392`*^9}, {3.761964965132492*^9, 
   3.7619649654829082`*^9}, {3.761965026523918*^9, 3.7619650383016825`*^9}, {
   3.7619651761843657`*^9, 3.7619651814070363`*^9}, {3.7619655305776315`*^9, 
   3.761965533956933*^9}, {3.761965579962531*^9, 3.7619655834859257`*^9}, {
   3.7619657071573997`*^9, 3.761965764354373*^9}, {3.761965799234143*^9, 
   3.7619658033079023`*^9}, {3.7619658825170617`*^9, 3.761965958989352*^9}, {
   3.761966026339875*^9, 3.761966132168974*^9}, {3.7619662210728407`*^9, 
   3.761966224116743*^9}, {3.761966254359844*^9, 3.761966256783516*^9}, {
   3.761966361844525*^9, 3.7619664510250983`*^9}, {3.761966720357029*^9, 
   3.7619667675065317`*^9}, {3.761966818963046*^9, 3.76196684645938*^9}, {
   3.7619669213846273`*^9, 3.761966922121517*^9}, {3.7619670168688965`*^9, 
   3.761967058355957*^9}, {3.7619670987970247`*^9, 3.7619671025444407`*^9}, {
   3.761967140614701*^9, 3.7619671465037975`*^9}, {3.7619672836563754`*^9, 
   3.7619672840337257`*^9}, {3.761994680009971*^9, 3.7619947123542986`*^9}, {
   3.762002457092984*^9, 3.762002474611519*^9}, {3.7620026925259027`*^9, 
   3.7620026974520144`*^9}, {3.7620027487248845`*^9, 
   3.7620027507830687`*^9}, {3.7620028726356754`*^9, 3.762002952065626*^9}, {
   3.7620030289254184`*^9, 3.762003081492711*^9}, {3.7620033151010127`*^9, 
   3.7620033355065174`*^9}, 3.7620047671905003`*^9, {3.762005211027822*^9, 
   3.7620052151812487`*^9}, {3.7620069297537575`*^9, 
   3.7620069298704515`*^9}, {3.7620070368831663`*^9, 
   3.7620071014284954`*^9}, {3.7620071317104845`*^9, 
   3.7620071452053833`*^9}, {3.762007188437729*^9, 3.762007191469617*^9}, {
   3.7620074167416267`*^9, 3.7620074705726204`*^9}, {3.7620075174741583`*^9, 
   3.762007543847598*^9}, {3.762007613774495*^9, 3.7620076260477047`*^9}, {
   3.7620077177340765`*^9, 3.7620077329693193`*^9}, 3.7620077685182185`*^9, {
   3.762008184339818*^9, 3.7620083343505077`*^9}, {3.762008389265606*^9, 
   3.7620085832406845`*^9}, {3.762008887494357*^9, 3.762008887596116*^9}, {
   3.762009030841222*^9, 3.762009055588026*^9}, {3.7620091797362576`*^9, 
   3.7620091814147716`*^9}, {3.762009723083701*^9, 3.762009756700768*^9}, {
   3.762009876366637*^9, 3.762009879112299*^9}, {3.7620099383847265`*^9, 
   3.7620099668635464`*^9}, {3.7620100247277117`*^9, 3.762010078051096*^9}, {
   3.762010128504122*^9, 3.762010146748319*^9}},
 CellTags->"Main Code",
 CellLabel->"In[171]:=",
 CellID->149023035,ExpressionUUID->"d85e33be-5d82-4801-b30b-e22b83cd7909"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a$$ = True, $CellContext`c$$ = 
    True, $CellContext`m$$ = 5, $CellContext`n$$ = 5, $CellContext`ol$$ = 
    5, $CellContext`pts$$ = {{2.885, 1.489}, {3.249, 2.6}, {2.298, 3.298}, {
    1.348, 2.607}, {1.71, 1.489}, {-1.71, 1.489}, {-1.34704, 2.607}, {-2.298, 
    3.298}, {-3.249, 2.607}, {-2.885, 1.489}}, $CellContext`rl$$ = 
    5, $CellContext`s$$ = 1, $CellContext`stableOrMove$$ = 
    "Stationary", $CellContext`step$$ = 0.01, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`stableOrMove$$], "Stationary", "View"}, {
      "Stationary", "Move around Mikowski"}}, {
      Hold[$CellContext`step$$], 0.01}, {
      Hold[$CellContext`rl$$], 
      Dynamic[$CellContext`ol$$]}, {
      Hold[$CellContext`ol$$]}, {{
       Hold[$CellContext`a$$], True, "Normals"}, {True, False}}, {{
       Hold[$CellContext`c$$], True, "Locators"}, {True, False}}, {{
       Hold[$CellContext`m$$], 5, "Robot Edges"}, {1, 2, 3, 4, 5}}, {{
       Hold[$CellContext`n$$], 5, "Obstacle Edges"}, {1, 2, 3, 4, 5}}, {{
       Hold[$CellContext`s$$], 1, "Move"}, 1, 
      Dynamic[($CellContext`rl$$ + $CellContext`ol$$) (
         1/$CellContext`step$$) - ($CellContext`rl$$ + $CellContext`ol$$ - 
       1)], 1}, {
      Hold[
       Dynamic[
        If[$CellContext`stableOrMove$$ != "Move around Mikowski", 
         Row[{
           Manipulate`Place[1], 
           Manipulate`Place[2], 
           Manipulate`Place[3], 
           Manipulate`Place[4]}, "  "], 
         Manipulate`Place[5]]]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`pts$$], {{2.885, 1.489}, {3.249, 2.6}, {2.298, 
       3.298}, {1.348, 2.607}, {1.71, 1.489}, {-1.71, 1.489}, {-1.347, 
       2.607}, {-2.298, 3.298}, {-3.249, 2.607}, {-2.885, 1.489}}}, {-3.249, 
      1.489}, {3.249, 3.298}}}, Typeset`size$$ = {486., {239., 246.}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`stableOrMove$197048$$ = 
    False, $CellContext`a$197049$$ = False, $CellContext`c$197050$$ = 
    False, $CellContext`m$197051$$ = 0, $CellContext`n$197052$$ = 
    0, $CellContext`s$197053$$ = 0, $CellContext`pts$197054$$ = {0, 0}}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`a$$ = True, $CellContext`c$$ = 
        True, $CellContext`m$$ = 5, $CellContext`n$$ = 5, $CellContext`ol$$ = 
        Null, $CellContext`pts$$ = {{2.885, 1.489}, {3.249, 2.6}, {2.298, 
         3.298}, {1.348, 2.607}, {1.71, 1.489}, {-1.71, 1.489}, {-1.347, 
         2.607}, {-2.298, 3.298}, {-3.249, 2.607}, {-2.885, 
         1.489}}, $CellContext`rl$$ = 
        Dynamic[$CellContext`ol$$], $CellContext`s$$ = 
        1, $CellContext`stableOrMove$$ = "Stationary", $CellContext`step$$ = 
        0.01}, "ControllerVariables" :> {
        Hold[$CellContext`stableOrMove$$, $CellContext`stableOrMove$197048$$, 
         False], 
        Hold[$CellContext`a$$, $CellContext`a$197049$$, False], 
        Hold[$CellContext`c$$, $CellContext`c$197050$$, False], 
        Hold[$CellContext`m$$, $CellContext`m$197051$$, 0], 
        Hold[$CellContext`n$$, $CellContext`n$197052$$, 0], 
        Hold[$CellContext`s$$, $CellContext`s$197053$$, 0], 
        Hold[$CellContext`pts$$, $CellContext`pts$197054$$, {0, 0}]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`oldpts$ = {}, $CellContext`roboconvex$, \
$CellContext`oboconvex$, $CellContext`robot$, $CellContext`obstacle$, \
$CellContext`rc$, $CellContext`oc$, $CellContext`robotNormal$, \
$CellContext`obstacleNormal$, $CellContext`robotArrows$, \
$CellContext`obstacleArrows$, $CellContext`robotSubscript$, \
$CellContext`obstacleSubscript$, $CellContext`robotAssignedNormal$, \
$CellContext`obstacleAssignedNormal$, $CellContext`orderOfNormals$, \
$CellContext`minkowskiPoints$, $CellContext`shiftedMink$, \
$CellContext`minklinelist$, $CellContext`minkrobotlinelist$ = {}, \
$CellContext`minkObstlinelist$ = {}, $CellContext`sortedArrows$, \
$CellContext`sortedNormals$, $CellContext`robotlabel$, \
$CellContext`obstaclelabel$, $CellContext`sortedNormalRobot$, \
$CellContext`sortedNormalObstacle$, $CellContext`discretPolygon$, \
$CellContext`sortedVectors$, $CellContext`pos$, $CellContext`prev$, \
$CellContext`minkowskiPointswithSide$, $CellContext`shiftedMinkwithSide$, \
$CellContext`minkowskiSidesNormalArrows$, $CellContext`shiftedMinkLineList$, \
$CellContext`roboPosMink$, $CellContext`obosPosMink$, \
$CellContext`minkowskiRobotSidesLabels$, \
$CellContext`minkowskiObstacleSidesLabels$, $CellContext`orderOfNormalsKeys$},
         If[$CellContext`pts$$ != $CellContext`oldpts$, $CellContext`oldpts$ = \
$CellContext`pts$$; Table[
            If[Part[
               Part[$CellContext`pts$$, $CellContext`i], 1] < 1.34704, Part[
               Part[$CellContext`pts$$, $CellContext`i], 1] = 
             1.34704], {$CellContext`i, 1, $CellContext`m$$, 1}]; Table[
            If[Part[
               Part[$CellContext`pts$$, $CellContext`i], 1] > -1.34704, Part[
               Part[$CellContext`pts$$, $CellContext`i], 
               1] = -1.34704], {$CellContext`i, 6, $CellContext`n$$ + 5, 1}]; 
          Null]; $CellContext`roboconvex$ = If[$CellContext`m$$ >= 3, 
           Reverse[
            (Part[
             #["Coordinates"], 
             Part[
              #["BoundaryVertices"], 1]]& )[
             ConvexHullMesh[
              Part[$CellContext`pts$$, 
               Span[1, $CellContext`m$$]]]]], 
           Part[$CellContext`pts$$, 
            Span[1, $CellContext`m$$ + 1]]]; $CellContext`oboconvex$ = 
         If[$CellContext`n$$ >= 3, 
           Reverse[
            (Part[
             #["Coordinates"], 
             Part[
              #["BoundaryVertices"], 1]]& )[
             ConvexHullMesh[
              Part[$CellContext`pts$$, 
               Span[6, $CellContext`n$$ + 5]]]]], 
           Part[$CellContext`pts$$, 
            Span[6, $CellContext`n$$ + 6]]]; $CellContext`rl$$ = 
         Length[$CellContext`roboconvex$] - 1; $CellContext`ol$$ = 
         Length[$CellContext`oboconvex$] - 1; $CellContext`robot$ = 
         Part[$CellContext`roboconvex$, 
           Span[1, $CellContext`rl$$]]; $CellContext`obstacle$ = 
         Part[$CellContext`oboconvex$, 
           Span[1, $CellContext`ol$$]]; $CellContext`rc$ = 
         Mean[$CellContext`robot$]; $CellContext`oc$ = 
         Mean[$CellContext`obstacle$]; If[$CellContext`m$$ == 3, If[
            Not[
             $CellContext`realQrm[
              ArcCos[
               VectorAngle[
                $CellContext`vector[{$CellContext`rc$, 
                  Median[
                   Part[$CellContext`robot$, 
                    Span[1, 2]]]}], -$CellContext`normalVector[
                  Part[$CellContext`robot$, 
                   Span[1, 2]]]]]]], $CellContext`robot$ = 
            Reverse[$CellContext`robot$]]; Null]; If[$CellContext`n$$ == 3, If[
            Not[
             $CellContext`realQrm[
              ArcCos[
               VectorAngle[
                $CellContext`vector[{$CellContext`oc$, 
                  Median[
                   Part[$CellContext`obstacle$, 
                    Span[1, 2]]]}], -$CellContext`normalVector[
                  Part[$CellContext`obstacle$, 
                   Span[1, 2]]]]]]], $CellContext`obstacle$ = 
            Reverse[$CellContext`obstacle$]]; 
          Null]; $CellContext`robotNormal$ = Map[{
            If[$CellContext`rl$$ >= 2, -$CellContext`normalVector[#], {0, 0}], 
            If[$CellContext`rl$$ >= 2, -$CellContext`vector[#], {0, 0}], 
            "\[Alpha]", #}& , 
           $CellContext`lineList[$CellContext`robot$]]; \
$CellContext`obstacleNormal$ = Map[{
            If[$CellContext`ol$$ >= 2, 
             $CellContext`normalVector[#], {0, 0}], 
            If[$CellContext`ol$$ >= 2, 
             $CellContext`vector[#], {0, 0}], "\[Beta]", #}& , 
           $CellContext`lineList[$CellContext`obstacle$]]; \
$CellContext`robotArrows$ = Map[Arrow[{
             Median[
              Part[#, 4]], 0.45 Part[#, 1] + Median[
               
               Part[#, 
                4]]}]& , $CellContext`robotNormal$]; \
$CellContext`obstacleArrows$ = Map[Arrow[{
             Median[
              Part[#, 4]], 0.45 Part[#, 1] + Median[
               
               Part[#, 
                4]]}]& , $CellContext`obstacleNormal$]; \
$CellContext`robotSubscript$ = Cases[
           Range[1, 
            Length[$CellContext`robotNormal$]], Pattern[$CellContext`t, 
             Blank[]] :> 
           Subscript[$CellContext`\[Alpha], $CellContext`t]]; \
$CellContext`obstacleSubscript$ = Cases[
           Range[1, 
            Length[$CellContext`obstacleNormal$]], Pattern[$CellContext`t, 
             Blank[]] :> 
           Subscript[$CellContext`\[Beta], $CellContext`t]]; \
$CellContext`robotAssignedNormal$ = 
         AssociationThread[$CellContext`robotSubscript$ -> \
$CellContext`robotNormal$]; $CellContext`obstacleAssignedNormal$ = 
         AssociationThread[$CellContext`obstacleSubscript$ -> \
$CellContext`obstacleNormal$]; $CellContext`orderOfNormals$ = Sort[
           Map[{
             If[
              Not[
               And[Part[
                  Part[#, 1], 1] == 0, Part[
                  Part[#, 1], 2] == 0]], 
              ArcTan[
               Part[
                Part[#, 1], 1], 
               Part[
                Part[#, 1], 2]], None], 
             Part[#, 1], 
             Part[#, 2], 
             Part[#, 3], 
             Part[#, 4]}& , 
            
            Join[$CellContext`robotAssignedNormal$, \
$CellContext`obstacleAssignedNormal$]], Part[#, 1] < 
           Part[#2, 1]& ]; $CellContext`sortedVectors$ = 
         Values[$CellContext`orderOfNormals$]; $CellContext`pos$ = Part[
           SequencePosition[
            Part[$CellContext`sortedVectors$, 
             Span[1, All], 4], {"\[Alpha]", "\[Beta]"}], 1, 
           1]; $CellContext`orderOfNormalsKeys$ = RotateLeft[
           
           Keys[$CellContext`orderOfNormals$], $CellContext`pos$]; \
$CellContext`prev$ = $CellContext`rc$ + Part[
            Part[
             Part[$CellContext`sortedVectors$, $CellContext`pos$ + 1], 5], 1] - 
          Part[
           Part[
            Part[$CellContext`sortedVectors$, $CellContext`pos$], 5], 
           1]; $CellContext`minkowskiPointswithSide$ = Map[{
            Chop[$CellContext`prev$ = $CellContext`prev$ - Part[#, 3]], 
            Part[#, 4]}& , 
           
           RotateLeft[$CellContext`sortedVectors$, $CellContext`pos$ - 
            1]]; $CellContext`minkowskiPoints$ = 
         Map[Part[#, 
            1]& , $CellContext`minkowskiPointswithSide$]; \
$CellContext`shiftedMinkwithSide$ = 
         Map[{-$CellContext`oc$ + {2.298, -2.298} + Part[#, 1], 
            Part[#, 2]}& , $CellContext`minkowskiPointswithSide$]; 
        AppendTo[$CellContext`shiftedMinkwithSide$, 
          
          Part[$CellContext`shiftedMinkwithSide$, 
           1]]; $CellContext`shiftedMink$ = 
         Map[Part[#, 1]& , $CellContext`shiftedMinkwithSide$]; Table[
          If[Part[
             Part[$CellContext`shiftedMinkwithSide$, $CellContext`i], 2] == 
           "\[Alpha]", 
           AppendTo[$CellContext`minkrobotlinelist$, {
             Part[
              Part[$CellContext`shiftedMinkwithSide$, $CellContext`i - 1], 1], 
             Part[
              Part[$CellContext`shiftedMinkwithSide$, $CellContext`i], 1]}], 
           AppendTo[$CellContext`minkObstlinelist$, {
             Part[
              Part[$CellContext`shiftedMinkwithSide$, $CellContext`i - 1], 1], 
             Part[
              Part[$CellContext`shiftedMinkwithSide$, $CellContext`i], 
              1]}]], {$CellContext`i, 2, 
           Length[$CellContext`shiftedMinkwithSide$], 
           1}]; $CellContext`sortedArrows$ = 
         Map[Arrow[{{-2.3, -1.5}, {-2.3, -1.5} + Part[#, 2]}]& , 
           Values[$CellContext`orderOfNormals$]]; $CellContext`robotlabel$ = 
         If[$CellContext`rl$$ >= 2, 
           Table[
            Text[
             Part[
              Keys[$CellContext`robotAssignedNormal$], $CellContext`i], Median[
               Part[
                Part[$CellContext`robotAssignedNormal$, $CellContext`i], 4]] - 
             0.2 Part[
               Part[$CellContext`robotAssignedNormal$, $CellContext`i], 
               1]], {$CellContext`i, 1, 
             Length[$CellContext`robotAssignedNormal$], 
             1}], {}]; $CellContext`obstaclelabel$ = 
         If[$CellContext`ol$$ >= 2, 
           Table[
            Text[
             Part[
              Keys[$CellContext`obstacleAssignedNormal$], $CellContext`i], 
             Median[
               Part[
                Part[$CellContext`obstacleAssignedNormal$, $CellContext`i], 
                4]] - 0.2 Part[
               Part[$CellContext`obstacleAssignedNormal$, $CellContext`i], 
               1]], {$CellContext`i, 1, 
             Length[$CellContext`obstacleAssignedNormal$], 
             1}], {}]; $CellContext`sortedNormalRobot$ = 
         If[$CellContext`rl$$ >= 2, 
           Table[
            Text[
             Part[
              
              Keys[$CellContext`robotAssignedNormal$], $CellContext`i], \
{-2.3, -1.5} + 1.2 Part[
                Part[$CellContext`robotAssignedNormal$, $CellContext`i], 
                1]], {$CellContext`i, 1, 
             Length[$CellContext`robotAssignedNormal$], 
             1}], {}]; $CellContext`sortedNormalObstacle$ = 
         If[$CellContext`ol$$ >= 2, 
           Table[
            Text[
             Part[
              
              Keys[$CellContext`obstacleAssignedNormal$], $CellContext`i], \
{-2.3, -1.5} + 1.2 Part[
                Part[$CellContext`obstacleAssignedNormal$, $CellContext`i], 
                1]], {$CellContext`i, 1, 
             Length[$CellContext`obstacleAssignedNormal$], 
             1}], {}]; $CellContext`minkowskiSidesNormalArrows$ = Map[Arrow[{
             Median[#], 0.5 $CellContext`normalVector[#] + Median[#]}]& , 
           
           Join[$CellContext`minkrobotlinelist$, \
$CellContext`minkObstlinelist$]]; $CellContext`shiftedMinkLineList$ = \
$CellContext`lineList[$CellContext`shiftedMink$]; $CellContext`roboPosMink$ = 
         Flatten[
           Map[Position[$CellContext`orderOfNormalsKeys$, 
             Subscript[$CellContext`\[Alpha], #]]& , 
            Range[1, $CellContext`rl$$]]]; $CellContext`obosPosMink$ = Flatten[
           Map[Position[$CellContext`orderOfNormalsKeys$, 
             Subscript[$CellContext`\[Beta], #]]& , 
            Range[
            1, $CellContext`ol$$]]]; $CellContext`minkowskiRobotSidesLabels$ = 
         If[$CellContext`rl$$ >= 2, 
           Map[Text[
             
             Part[$CellContext`orderOfNormalsKeys$, #], (-0.25) \
$CellContext`normalVector[
                Part[$CellContext`shiftedMinkLineList$, #]] + Mean[
               
               Part[$CellContext`shiftedMinkLineList$, #]]]& , \
$CellContext`roboPosMink$], {}]; $CellContext`minkowskiObstacleSidesLabels$ = 
         If[$CellContext`ol$$ >= 2, 
           Map[Text[
             
             Part[$CellContext`orderOfNormalsKeys$, #], (-0.25) \
$CellContext`normalVector[
                Part[$CellContext`shiftedMinkLineList$, #]] + Mean[
               
               Part[$CellContext`shiftedMinkLineList$, #]]]& , \
$CellContext`obosPosMink$], {}]; $CellContext`discretPolygon$ = \
$CellContext`discretizePoly[$CellContext`minkowskiPoints$, \
$CellContext`step$$]; Graphics[{{
            EdgeForm[Thin], White, 
            Polygon[7 CirclePoints[4]]}, 
           
           If[$CellContext`stableOrMove$$ != 
            "Move around Mikowski", $CellContext`c$$ = True; {{{
                Opacity[0.5], LightGreen, 
                Polygon[$CellContext`shiftedMink$]}, {Blue, 
                Line[$CellContext`minkrobotlinelist$]}, {Red, 
                Line[$CellContext`minkObstlinelist$]}, {Black, 
                Point[$CellContext`shiftedMink$]}, {Black, 
                Text["Minkowski Sum", {2.3, -4.75}]}, 
               
               If[$CellContext`a$$ == 
                True, {$CellContext`minkowskiSidesNormalArrows$}], {
               Blue, $CellContext`minkowskiRobotSidesLabels$}, {
               Red, $CellContext`minkowskiObstacleSidesLabels$}}, {{
                EdgeForm[Red], LightRed, 
                Polygon[$CellContext`obstacle$]}, {Red, 
                Point[
                 Part[$CellContext`pts$$, 
                  Span[6, $CellContext`n$$ + 5]]]}, {Black, 
                Point[$CellContext`obstacle$]}, {Black, 
                Point[$CellContext`oc$]}, {
                
                If[$CellContext`a$$ == 
                 True, {$CellContext`obstacleArrows$}]}, {
               Red, $CellContext`obstaclelabel$}, {Black, 
                Text["Obstacle", {-2.3, 0.8}]}}, {{
                EdgeForm[Blue], LightBlue, 
                Polygon[$CellContext`robot$]}, {Blue, 
                Point[
                 Part[$CellContext`pts$$, 
                  Span[1, $CellContext`m$$]]]}, {Black, 
                Point[$CellContext`robot$]}, {Black, 
                Point[$CellContext`rc$]}, {
                If[$CellContext`a$$ == True, {$CellContext`robotArrows$}]}, {
               Blue, $CellContext`robotlabel$}, {Black, 
                Text["Robot", {2.3, 0.8}]}}, {{
               Black, $CellContext`sortedArrows$}, {
                EdgeForm[Thin], White, 
                Disk[{-2.3, -1.5}, {0.5, 0.5}]}, {
               Blue, $CellContext`sortedNormalRobot$}, {
               Red, $CellContext`sortedNormalObstacle$}, {
                Text["Sorted Normals", {-2.3, -3.2}]}}}, $CellContext`c$$ = 
             False; {{{
                EdgeForm[None], LightGreen, 
                Opacity[0.5], 
                Polygon[
                 
                 Map[-$CellContext`oc$ + #& , \
$CellContext`minkowskiPoints$]]}, {Black, 
                Point[
                 
                 Map[-$CellContext`oc$ + #& , \
$CellContext`minkowskiPoints$]]}, {Blue, 
                Line[
                 
                 Map[{-{2.298, -2.298} + Part[#, 1], -{2.298, -2.298} + 
                   Part[#, 2]}& , $CellContext`minkrobotlinelist$]]}, {Red, 
                Map[
                Line[{-{2.298, -2.298} + Part[#, 1], -{2.298, -2.298} + 
                   Part[#, 2]}]& , $CellContext`minkObstlinelist$]}, {Black, 
                Text["Minkowski Sum", {0, 1.1}]}}, {{
                EdgeForm[Red], LightRed, 
                Polygon[
                 Map[-$CellContext`oc$ + #& , $CellContext`obstacle$]]}, {
               Black, 
                Point[
                 Map[-$CellContext`oc$ + #& , $CellContext`obstacle$]]}, {
               Black, Null, 
                Text["Obstacle", {0, 0}]}}, {{
                EdgeForm[Blue], 
                Opacity[0.5], LightBlue, 
                Polygon[
                 Map[
                 Part[$CellContext`discretPolygon$, $CellContext`s$$] - \
$CellContext`rc$ - $CellContext`oc$ + #& , $CellContext`robot$]]}, {Black, 
                Point[
                 Map[
                 Part[$CellContext`discretPolygon$, $CellContext`s$$] - \
$CellContext`rc$ - $CellContext`oc$ + #& , $CellContext`robot$]]}, {Red, 
                Point[
                Part[$CellContext`discretPolygon$, $CellContext`s$$] - \
$CellContext`oc$]}, {Black, 
                Text[
                "Robot", 
                 Part[$CellContext`discretPolygon$, $CellContext`s$$] - \
$CellContext`oc$ + {0.2, 0.2}]}}}]}]], 
      "Specifications" :> {{{$CellContext`stableOrMove$$, "Stationary", 
          "View"}, {
         "Stationary", "Move around Mikowski"}}, {$CellContext`step$$, 0.01, 
         ControlType -> None}, {$CellContext`rl$$, 
         Dynamic[$CellContext`ol$$], ControlType -> None}, {$CellContext`ol$$,
          ControlType -> None}, {{$CellContext`a$$, True, "Normals"}, {
         True, False}, ControlPlacement -> 
         1}, {{$CellContext`c$$, True, "Locators"}, {True, False}, 
         ControlPlacement -> 2}, {{$CellContext`m$$, 5, "Robot Edges"}, {1, 2,
          3, 4, 5}, ControlPlacement -> 
         3}, {{$CellContext`n$$, 5, "Obstacle Edges"}, {1, 2, 3, 4, 5}, 
         ControlPlacement -> 4}, {{$CellContext`s$$, 1, "Move"}, 1, 
         Dynamic[($CellContext`rl$$ + $CellContext`ol$$) (
            1/$CellContext`step$$) - ($CellContext`rl$$ + $CellContext`ol$$ - 
          1)], 1, AnimationRunning -> True, Appearance -> "Open", 
         ControlPlacement -> 5}, 
        Dynamic[
         If[$CellContext`stableOrMove$$ != "Move around Mikowski", 
          Row[{
            Manipulate`Place[1], 
            Manipulate`Place[2], 
            Manipulate`Place[3], 
            Manipulate`Place[4]}, "  "], 
          Manipulate`Place[5]]], {{$CellContext`pts$$, {{2.885, 1.489}, {
          3.249, 2.6}, {2.298, 3.298}, {1.348, 2.607}, {1.71, 1.489}, {-1.71, 
          1.489}, {-1.347, 2.607}, {-2.298, 3.298}, {-3.249, 2.607}, {-2.885, 
          1.489}}}, {-3.249, 1.489}, {3.249, 3.298}, ControlType -> Locator, 
         Appearance -> None, Enabled -> Dynamic[$CellContext`c$$]}}, 
      "Options" :> {AppearanceElements -> {}, PreserveImageOptions -> True}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{611., {309., 317.}},
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
 CellChangeTimes->{
  3.7620077702804728`*^9, {3.762008201313402*^9, 3.762008230909296*^9}, 
   3.7620082752894793`*^9, 3.762008335000738*^9, 3.762008407752122*^9, {
   3.7620085730150676`*^9, 3.7620086001723843`*^9}, {3.762008640443619*^9, 
   3.7620086658895464`*^9}, 3.7620088881267004`*^9, 3.762009005953801*^9, {
   3.7620090378245096`*^9, 3.762009056132611*^9}, {3.7620091506507215`*^9, 
   3.7620091820041637`*^9}, {3.762009350213201*^9, 3.7620093924123087`*^9}, 
   3.7620094713251696`*^9, 3.7620095261934185`*^9, 3.7620095889625006`*^9, 
   3.762009637847726*^9, {3.7620097440017357`*^9, 3.7620097573799458`*^9}, 
   3.762009879515361*^9, 3.7620099416161947`*^9, {3.7620100331024427`*^9, 
   3.762010078895858*^9}, {3.762010150473318*^9, 3.7620101708637915`*^9}, {
   3.7620103375479016`*^9, 3.7620103525287814`*^9}},
 CellTags->"Main Code",
 CellLabel->"Out[171]=",
 CellID->700841480,ExpressionUUID->"8ff0d497-6940-4c77-9361-925206fcb515"]
}, Open  ]],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.762003267203843*^9, 3.7620032685971756`*^9}},
 CellID->249590669,ExpressionUUID->"88a3e86b-9778-48b1-8206-11194e1f05f9"],

Cell[TextData[{
 "ISSUES\n",
 StyleBox["//1) Color the \[Alpha]'s  and \[Beta]'s  blue and red in \
Minkowski region.\n", "Text"],
 StyleBox["//", "Subsection"],
 StyleBox["1) Point and Line Minkowski fix.\n//3)when one vertex of the \
triangle is translated to other direction, the normals reverse the \
directions.", "Text"],
 "\n1) Minkowski Shifting when changing some locators in robot/ obstacle. \
(Very Important)\n2)when robot/obstacle is a Line we get 2 normals both \
opposite to each other.\n3) Make new Minkowski Function with new changes.\n\
4)Make demo by tomorrow. writeup the demonstration text (summary, details, \
related work, etc.)"
}], "Section",
 CellChangeTimes->{{3.761866128062013*^9, 3.7618663945717063`*^9}, {
  3.7619435673058066`*^9, 3.7619436380968447`*^9}, {3.761943682163417*^9, 
  3.76194372930801*^9}, {3.7619452416144924`*^9, 3.761945371564972*^9}, {
  3.761946273743348*^9, 3.76194628640692*^9}, {3.761947109649574*^9, 
  3.7619471170344467`*^9}, {3.762008649196204*^9, 3.7620086616499376`*^9}, {
  3.7620091619937253`*^9, 3.7620091620655003`*^9}},
 CellID->183158748,ExpressionUUID->"a5d8db34-fa45-4b42-8003-8af7b5e2d7bb"]
}, Open  ]]
},
WindowSize->{1536, 791},
WindowMargins->{{-8, Automatic}, {Automatic, 0}},
WindowTitle->"Minkowski_Sum_Normal_Rev6.nb",
DockedCells->Cell[
  BoxData[
   PanelBox[
    PaneBox[
     TagBox[
      GridBox[{{
         StyleBox[
          DynamicBox[
           FEPrivate`FrontEndResource[
           "MUnitStrings", "TestingNotebook-Title"], 
           ImageSizeCache -> {100., {3., 9.}}], StripOnInput -> False, 
          FontSize -> 12, FontColor -> GrayLevel[0.4]], "\[SpanFromLeft]", 
         "\[SpanFromLeft]", "\[SpanFromLeft]", "\[SpanFromLeft]", 
         "\[SpanFromLeft]"}, {
         ButtonBox[
          TagBox[
           TooltipBox[
            PaneSelectorBox[{False -> PaneBox[
                TagBox[
                 GridBox[{{
                    DynamicBox[
                    FEPrivate`FrontEndResource["MUnitExpressions", "New"], 
                    ImageSizeCache -> {11., {4., 8.}}], 
                    StyleBox[
                    DynamicBox[
                    FEPrivate`FrontEndResource["MUnitStrings", "New-Label"], 
                    ImageSizeCache -> {26., {0., 9.}}], "ButtonText", 
                    StripOnInput -> False]}}, AutoDelete -> False, 
                  GridBoxAlignment -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Center}}}, 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                  GridBoxSpacings -> {
                   "Columns" -> {{0.4}}, "Rows" -> {{Automatic}}}], "Grid"], 
                ImageMargins -> {{Automatic, Automatic}, {4, Automatic}}], 
              True -> PaneBox[
                TagBox[
                 GridBox[{{
                    DynamicBox[
                    FEPrivate`FrontEndResource["MUnitExpressions", "New"]], 
                    StyleBox[
                    DynamicBox[
                    FEPrivate`FrontEndResource["MUnitStrings", "New-Label"]], 
                    "ButtonText", StripOnInput -> False, LineColor -> 
                    RGBColor[0.9059, 0.3451, 0.102], FrontFaceColor -> 
                    RGBColor[
                    0.9059, 0.3451, 0.102], $CellContext`BackFaceColor -> 
                    RGBColor[0.9059, 0.3451, 0.102], GraphicsColor -> 
                    RGBColor[0.9059, 0.3451, 0.102], FontColor -> 
                    RGBColor[0.9059, 0.3451, 0.102]]}}, AutoDelete -> False, 
                  GridBoxAlignment -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Center}}}, 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                  GridBoxSpacings -> {
                   "Columns" -> {{0.4}}, "Rows" -> {{Automatic}}}], "Grid"], 
                ImageMargins -> {{Automatic, Automatic}, {4, Automatic}}]}, 
             Dynamic[
              CurrentValue["MouseOver"]], FrameMargins -> 0, ImageSize -> 
             Automatic], 
            DynamicBox[
             FEPrivate`FrontEndResource["MUnitStrings", "New-Tooltip"]], 
            TooltipDelay -> 0.5], Annotation[#, 
            Dynamic[
             RawBoxes[
              FEPrivate`FrontEndResource["MUnitStrings", "New-Tooltip"]]], 
            "Tooltip"]& ], Appearance -> 
          FEPrivate`FrontEndResource["MUnitExpressions", "ButtonAppearances"],
           ButtonFunction :> 
          Block[{$ContextPath}, Needs["MUnit`"]; MUnit`PaletteInsertTest[
              InputNotebook[]]], Evaluator -> Automatic, 
          FrameMargins -> {{10, 10}, {0, 0}}, ImageSize -> {Automatic, 28}, 
          Method -> "Queued"], 
         ButtonBox[
          TagBox[
           TooltipBox[
            PaneSelectorBox[{False -> PaneBox[
                TagBox[
                 GridBox[{{
                    PaneBox[
                    DynamicBox[
                    FEPrivate`FrontEndResource[
                    "MUnitExpressions", "ConvertSelection"], 
                    ImageSizeCache -> {14., {4., 8.}}], 
                    ImageMargins -> {{
                    Automatic, Automatic}, {-1, Automatic}}], 
                    PaneBox[
                    StyleBox[
                    DynamicBox[
                    FEPrivate`FrontEndResource[
                    "MUnitStrings", "ConvertSelectiontoTest-Label"], 
                    ImageSizeCache -> {99., {1., 9.}}], "ButtonText", 
                    StripOnInput -> False], 
                    ImageMargins -> {{
                    Automatic, Automatic}, {-1, Automatic}}]}}, AutoDelete -> 
                  False, GridBoxAlignment -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Center}}}, 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                  GridBoxSpacings -> {
                   "Columns" -> {{0.4}}, "Rows" -> {{Automatic}}}], "Grid"], 
                ImageMargins -> {{Automatic, Automatic}, {4, Automatic}}], 
              True -> PaneBox[
                TagBox[
                 GridBox[{{
                    PaneBox[
                    DynamicBox[
                    FEPrivate`FrontEndResource[
                    "MUnitExpressions", "ConvertSelection"]], 
                    ImageMargins -> {{
                    Automatic, Automatic}, {-1, Automatic}}], 
                    PaneBox[
                    StyleBox[
                    DynamicBox[
                    FEPrivate`FrontEndResource[
                    "MUnitStrings", "ConvertSelectiontoTest-Label"]], 
                    "ButtonText", StripOnInput -> False, LineColor -> 
                    RGBColor[0.9059, 0.3451, 0.102], FrontFaceColor -> 
                    RGBColor[
                    0.9059, 0.3451, 0.102], $CellContext`BackFaceColor -> 
                    RGBColor[0.9059, 0.3451, 0.102], GraphicsColor -> 
                    RGBColor[0.9059, 0.3451, 0.102], FontColor -> 
                    RGBColor[0.9059, 0.3451, 0.102]], 
                    ImageMargins -> {{
                    Automatic, Automatic}, {-1, Automatic}}]}}, AutoDelete -> 
                  False, GridBoxAlignment -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Center}}}, 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                  GridBoxSpacings -> {
                   "Columns" -> {{0.4}}, "Rows" -> {{Automatic}}}], "Grid"], 
                ImageMargins -> {{Automatic, Automatic}, {4, Automatic}}]}, 
             Dynamic[
              CurrentValue["MouseOver"]], FrameMargins -> 0, ImageSize -> 
             Automatic], 
            DynamicBox[
             FEPrivate`FrontEndResource[
             "MUnitStrings", "ConvertSelectiontoTest-Tooltip"]], TooltipDelay -> 
            0.5], Annotation[#, 
            Dynamic[
             RawBoxes[
              FEPrivate`FrontEndResource[
              "MUnitStrings", "ConvertSelectiontoTest-Tooltip"]]], 
            "Tooltip"]& ], Appearance -> 
          FEPrivate`FrontEndResource["MUnitExpressions", "ButtonAppearances"],
           ButtonFunction :> 
          Block[{$ContextPath}, Needs["MUnit`"]; MUnit`buttonConvertCellGroup[
              InputNotebook[]]], Evaluator -> Automatic, 
          FrameMargins -> {{10, 10}, {0, 0}}, ImageSize -> {Automatic, 28}, 
          Method -> "Queued"], 
         ButtonBox[
          TagBox[
           TooltipBox[
            PaneSelectorBox[{False -> PaneBox[
                TagBox[
                 GridBox[{{
                    DynamicBox[
                    FEPrivate`FrontEndResource["MUnitExpressions", "Run"], 
                    ImageSizeCache -> {9., {4., 8.}}], 
                    StyleBox[
                    DynamicBox[
                    FEPrivate`FrontEndResource["MUnitStrings", "Run-Label"], 
                    ImageSizeCache -> {22., {0., 9.}}], "ButtonText", 
                    StripOnInput -> False]}}, AutoDelete -> False, 
                  GridBoxAlignment -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Center}}}, 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                  GridBoxSpacings -> {
                   "Columns" -> {{0.3}}, "Rows" -> {{Automatic}}}], "Grid"], 
                ImageMargins -> {{Automatic, Automatic}, {4, Automatic}}], 
              True -> PaneBox[
                TagBox[
                 GridBox[{{
                    DynamicBox[
                    FEPrivate`FrontEndResource["MUnitExpressions", "Run"]], 
                    StyleBox[
                    DynamicBox[
                    FEPrivate`FrontEndResource["MUnitStrings", "Run-Label"]], 
                    "ButtonText", StripOnInput -> False, LineColor -> 
                    RGBColor[0.9059, 0.3451, 0.102], FrontFaceColor -> 
                    RGBColor[
                    0.9059, 0.3451, 0.102], $CellContext`BackFaceColor -> 
                    RGBColor[0.9059, 0.3451, 0.102], GraphicsColor -> 
                    RGBColor[0.9059, 0.3451, 0.102], FontColor -> 
                    RGBColor[0.9059, 0.3451, 0.102]]}}, AutoDelete -> False, 
                  GridBoxAlignment -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Center}}}, 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                  GridBoxSpacings -> {
                   "Columns" -> {{0.3}}, "Rows" -> {{Automatic}}}], "Grid"], 
                ImageMargins -> {{Automatic, Automatic}, {4, Automatic}}]}, 
             Dynamic[
              CurrentValue["MouseOver"]], FrameMargins -> 0, ImageSize -> 
             Automatic], 
            DynamicBox[
             FEPrivate`FrontEndResource["MUnitStrings", "Run-Tooltip"]], 
            TooltipDelay -> 0.5], Annotation[#, 
            Dynamic[
             RawBoxes[
              FEPrivate`FrontEndResource["MUnitStrings", "Run-Tooltip"]]], 
            "Tooltip"]& ], Appearance -> 
          FEPrivate`FrontEndResource["MUnitExpressions", "ButtonAppearances"],
           ButtonFunction :> 
          Block[{$ContextPath}, Needs["MUnit`"]; MUnit`PaletteRun[
              InputNotebook[]]], Evaluator -> Automatic, 
          FrameMargins -> {{10, 10}, {0, 0}}, ImageSize -> {Automatic, 28}, 
          Method -> "Queued"], 
         ActionMenuBox[
          ButtonBox[
           PaneSelectorBox[{False -> StyleBox[
               TagBox[
                GridBox[{{
                   DynamicBox[
                    FEPrivate`FrontEndResource["MUnitStrings", "More-Label"], 
                    ImageSizeCache -> {30., {0., 9.}}], 
                   "\"\[FilledDownTriangle]\""}}, AutoDelete -> False, 
                 GridBoxItemSize -> {
                  "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                 GridBoxSpacings -> {
                  "Columns" -> {{0.5}}, "Rows" -> {{Automatic}}}], "Grid"], 
               "ButtonText", StripOnInput -> False], True -> StyleBox[
               TagBox[
                GridBox[{{
                   DynamicBox[
                    FEPrivate`FrontEndResource["MUnitStrings", "More-Label"]],
                    "\"\[FilledDownTriangle]\""}}, AutoDelete -> False, 
                 GridBoxItemSize -> {
                  "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                 GridBoxSpacings -> {
                  "Columns" -> {{0.5}}, "Rows" -> {{Automatic}}}], "Grid"], 
               "ButtonText", StripOnInput -> False, LineColor -> 
               RGBColor[0.9059, 0.3451, 0.102], FrontFaceColor -> 
               RGBColor[0.9059, 0.3451, 0.102], $CellContext`BackFaceColor -> 
               RGBColor[0.9059, 0.3451, 0.102], GraphicsColor -> 
               RGBColor[0.9059, 0.3451, 0.102], FontColor -> 
               RGBColor[0.9059, 0.3451, 0.102]]}, 
            Dynamic[
             CurrentValue["MouseOver"]], FrameMargins -> 0, ImageSize -> 
            Automatic], Appearance -> 
           FEPrivate`FrontEndResource[
            "MUnitExpressions", "ButtonAppearances"], ButtonFunction :> {}, 
           ContentPadding -> False, Evaluator -> None, 
           FrameMargins -> {{10, 10}, {0, 0}}, ImageSize -> {Automatic, 28}, 
           Method -> "Preemptive"], {TagBox[
             GridBox[{{
                PaneBox[
                 DynamicBox[
                  FEPrivate`FrontEndResource[
                  "MUnitExpressions", "AssignTestIDs"]], 
                 ImageMargins -> {{Automatic, Automatic}, {2, Automatic}}], 
                DynamicBox[
                 FEPrivate`FrontEndResource[
                 "MUnitStrings", "AssignTestIDs-Label"]]}}, AutoDelete -> 
              False, GridBoxAlignment -> {
               "Columns" -> {{Automatic}}, "Rows" -> {{Center}}}, 
              GridBoxItemSize -> {
               "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"] :> 
           Block[{$ContextPath}, Needs["MUnit`"]; MUnit`PaletteAddTestIDs[
               InputNotebook[]]], TagBox[
             GridBox[{{
                PaneBox[
                 DynamicBox[
                  FEPrivate`FrontEndResource[
                  "MUnitExpressions", "SaveAsDotwlt"]], 
                 ImageMargins -> {{Automatic, Automatic}, {2, Automatic}}], 
                DynamicBox[
                 FEPrivate`FrontEndResource[
                 "MUnitStrings", "SaveAsDotwlt-Label"]]}}, AutoDelete -> 
              False, GridBoxAlignment -> {
               "Columns" -> {{Automatic}}, "Rows" -> {{Center}}}, 
              GridBoxItemSize -> {
               "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"] :> 
           Block[{$ContextPath}, Needs["MUnit`"]; MUnit`PaletteSaveAs[
               InputNotebook[]]], TagBox[
             GridBox[{{
                PaneBox[
                 DynamicBox[
                  FEPrivate`FrontEndResource["MUnitExpressions", "Help"]], 
                 ImageMargins -> {{Automatic, Automatic}, {3, Automatic}}], 
                DynamicBox[
                 FEPrivate`FrontEndResource["MUnitStrings", "Help-Label"]]}}, 
              AutoDelete -> False, 
              GridBoxAlignment -> {
               "Columns" -> {{Automatic}}, "Rows" -> {{Center}}}, 
              GridBoxItemSize -> {
               "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"] :> 
           SystemOpen["paclet:tutorial/UsingTheTestingFramework"]}, 
          Appearance -> None, Method -> "Queued"], 
         ItemBox["\"\"", ItemSize -> Fit, StripOnInput -> False], 
         PaneSelectorBox[{True -> ButtonBox[
             TagBox[
              TooltipBox[
               PaneSelectorBox[{False -> TagBox[
                   GridBox[{{
                    PaneBox[
                    DynamicBox[
                    FEPrivate`FrontEndResource[
                    "MUnitExpressions", "ClearTestResults-on"], 
                    ImageSizeCache -> {9., {4., 8.}}], 
                    ImageMargins -> {{Automatic, Automatic}, {2, Automatic}}], 
                    StyleBox[
                    DynamicBox[
                    FEPrivate`FrontEndResource[
                    "MUnitStrings", "ClearTestResults-Label"], 
                    ImageSizeCache -> {96., {1., 9.}}], "ButtonText", 
                    StripOnInput -> False]}}, AutoDelete -> False, 
                    GridBoxAlignment -> {
                    "Columns" -> {{Automatic}}, "Rows" -> {{Center}}}, 
                    GridBoxItemSize -> {
                    "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                    GridBoxSpacings -> {
                    "Columns" -> {{0.4}}, "Rows" -> {{Automatic}}}], "Grid"], 
                 True -> TagBox[
                   GridBox[{{
                    PaneBox[
                    DynamicBox[
                    FEPrivate`FrontEndResource[
                    "MUnitExpressions", "ClearTestResults-on"]], 
                    ImageMargins -> {{Automatic, Automatic}, {2, Automatic}}], 
                    StyleBox[
                    DynamicBox[
                    FEPrivate`FrontEndResource[
                    "MUnitStrings", "ClearTestResults-Label"]], "ButtonText", 
                    StripOnInput -> False, LineColor -> 
                    RGBColor[0.9059, 0.3451, 0.102], FrontFaceColor -> 
                    RGBColor[
                    0.9059, 0.3451, 0.102], $CellContext`BackFaceColor -> 
                    RGBColor[0.9059, 0.3451, 0.102], GraphicsColor -> 
                    RGBColor[0.9059, 0.3451, 0.102], FontColor -> 
                    RGBColor[0.9059, 0.3451, 0.102]]}}, AutoDelete -> False, 
                    GridBoxAlignment -> {
                    "Columns" -> {{Automatic}}, "Rows" -> {{Center}}}, 
                    GridBoxItemSize -> {
                    "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                    GridBoxSpacings -> {
                    "Columns" -> {{0.4}}, "Rows" -> {{Automatic}}}], "Grid"]}, 
                Dynamic[
                 CurrentValue["MouseOver"]], FrameMargins -> 0, ImageSize -> 
                Automatic], 
               DynamicBox[
                FEPrivate`FrontEndResource[
                "MUnitStrings", "ClearTestResults-Tooltip"]], TooltipDelay -> 
               0.5], Annotation[#, 
               Dynamic[
                RawBoxes[
                 FEPrivate`FrontEndResource[
                 "MUnitStrings", "ClearTestResults-Tooltip"]]], "Tooltip"]& ],
              Appearance -> 
             FEPrivate`FrontEndResource[
              "MUnitExpressions", "ButtonAppearances"], ButtonFunction :> 
             Block[{$ContextPath}, Needs["MUnit`"]; MUnit`clearTestResults[]],
              Enabled -> FEPrivate`SameQ[
               FrontEnd`CurrentValue[
                FrontEnd`ButtonNotebook[], {TaggingRules, "$testsRun"}, 
                False], True], Evaluator -> Automatic, 
             FrameMargins -> {{10, 10}, {0, 0}}, ImageSize -> {Automatic, 28},
              Method -> "Queued"], False -> ButtonBox[
             TagBox[
              GridBox[{{
                 PaneBox[
                  DynamicBox[
                   FEPrivate`FrontEndResource[
                   "MUnitExpressions", "ClearTestResults-off"], 
                   ImageSizeCache -> {9., {4., 8.}}], 
                  ImageMargins -> {{Automatic, Automatic}, {2, Automatic}}], 
                 StyleBox[
                  DynamicBox[
                   FEPrivate`FrontEndResource[
                   "MUnitStrings", "ClearTestResults-Label"], 
                   ImageSizeCache -> {96., {1., 9.}}], "ButtonText", 
                  StripOnInput -> False, LineColor -> GrayLevel[0.7], 
                  FrontFaceColor -> 
                  GrayLevel[0.7], $CellContext`BackFaceColor -> 
                  GrayLevel[0.7], GraphicsColor -> GrayLevel[0.7], FontColor -> 
                  GrayLevel[0.7]]}}, AutoDelete -> False, 
               GridBoxAlignment -> {
                "Columns" -> {{Automatic}}, "Rows" -> {{Center}}}, 
               GridBoxItemSize -> {
                "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
               GridBoxSpacings -> {
                "Columns" -> {{0.4}}, "Rows" -> {{Automatic}}}], "Grid"], 
             Appearance -> 
             FEPrivate`FrontEndResource[
              "MUnitExpressions", "ButtonAppearances"], ButtonFunction :> {}, 
             Enabled -> FEPrivate`SameQ[
               FrontEnd`CurrentValue[
                FrontEnd`ButtonNotebook[], {TaggingRules, "$testsRun"}, 
                False], True], Evaluator -> None, 
             FrameMargins -> {{10, 10}, {0, 0}}, ImageSize -> {Automatic, 28},
              Method -> "Preemptive"]}, 
          FrontEnd`CurrentValue[
           FrontEnd`ButtonNotebook[], {TaggingRules, "$testsRun"}, False], 
          ImageSize -> All]}}, AutoDelete -> False, 
       BaseStyle -> {
        "DialogStyle", Bold, FontColor -> 
         RGBColor[
          0.33333333333333337`, 0.33333333333333337`, 0.33333333333333337`]}, 
       GridBoxAlignment -> {"Columns" -> {{Left}}}, 
       GridBoxDividers -> {"Columns" -> {{False}}}, 
       GridBoxItemSize -> {
        "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
       GridBoxSpacings -> {"Columns" -> {{Automatic}}, "Rows" -> {{1}}}], 
      "Grid"], ImageMargins -> {{5, 5}, {Automatic, Automatic}}], Appearance -> 
    FEPrivate`FrontEndResource["MUnitExpressions", "StaticToolbarNinePatch"], 
    FrameMargins -> {{26, 12}, {8, 12}}, ImageMargins -> -1]], "DockedCell", 
  CellFrameMargins -> 0, ShowCellTags -> False, CellTags -> 
  "MUnitStaticToolbar"],
TaggingRules->{"$testsRun" -> False},
Magnification:>1.35 Inherited,
FrontEndVersion->"11.3 for Microsoft Windows (64-bit) (March 6, 2018)",
StyleDefinitions->FrontEnd`FileName[{"MUnit"}, "MUnit.nb", CharacterEncoding -> 
  "UTF-8"]
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{
 "Main Code"->{
  Cell[7929, 241, 99856, 1928, 4689, "Input",ExpressionUUID->"d85e33be-5d82-4801-b30b-e22b83cd7909",
   CellTags->"Main Code",
   CellID->149023035],
  Cell[107788, 2171, 23222, 477, 651, "Output",ExpressionUUID->"8ff0d497-6940-4c77-9361-925206fcb515",
   CellTags->"Main Code",
   CellID->700841480]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"Main Code", 153454, 3101}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[622, 23, 389, 6, 85, "Subchapter",ExpressionUUID->"5599f4a2-65a4-42a1-bf11-d3fd3bcdf90d",
 InitializationCell->True,
 CellID->537274558],
Cell[1014, 31, 818, 21, 91, "Input",ExpressionUUID->"6e528893-f7ee-40c7-9deb-78be7673e08e",
 InitializationCell->True,
 InitializationGroup->True,
 CellID->254152640],
Cell[1835, 54, 855, 26, 140, "Input",ExpressionUUID->"1339aed7-b782-43d4-a513-1309c9a70749",
 InitializationCell->True,
 InitializationGroup->True,
 CellID->614486719],
Cell[2693, 82, 1345, 40, 119, "Input",ExpressionUUID->"c85c6f6a-d8e1-42d2-8f09-a0aeb6e9b573",
 InitializationCell->True,
 InitializationGroup->True,
 CellID->221074263],
Cell[4041, 124, 1052, 28, 119, "Input",ExpressionUUID->"b4a37082-2f2e-4562-a5ee-1a2758beee35",
 InitializationCell->True,
 InitializationGroup->True,
 CellID->72501454],
Cell[5096, 154, 899, 26, 91, "Input",ExpressionUUID->"4a71eaa6-15fe-4099-9e63-db235688a722",
 InitializationCell->True,
 InitializationGroup->True,
 CellID->260974026],
Cell[5998, 182, 709, 21, 91, "Input",ExpressionUUID->"253250fd-c3ce-4b2b-b5cb-645b39f63846",
 InitializationCell->True,
 InitializationGroup->True,
 CellID->429294093],
Cell[6710, 205, 961, 24, 120, "Input",ExpressionUUID->"924f0dc4-fc65-47cb-8c49-c104e23e4f5a",
 InitializationCell->True,
 CellID->7629533]
}, Open  ]],
Cell[CellGroupData[{
Cell[7708, 234, 196, 3, 85, "Subchapter",ExpressionUUID->"86eb5d61-1192-401b-987f-c378b134e3e4",
 CellID->37223916],
Cell[CellGroupData[{
Cell[7929, 241, 99856, 1928, 4689, "Input",ExpressionUUID->"d85e33be-5d82-4801-b30b-e22b83cd7909",
 CellTags->"Main Code",
 CellID->149023035],
Cell[107788, 2171, 23222, 477, 651, "Output",ExpressionUUID->"8ff0d497-6940-4c77-9361-925206fcb515",
 CellTags->"Main Code",
 CellID->700841480]
}, Open  ]],
Cell[131025, 2651, 169, 2, 40, "Input",ExpressionUUID->"88a3e86b-9778-48b1-8206-11194e1f05f9",
 CellID->249590669],
Cell[131197, 2655, 1159, 20, 433, "Section",ExpressionUUID->"a5d8db34-fa45-4b42-8003-8af7b5e2d7bb",
 CellID->183158748]
}, Open  ]]
}
]
*)

