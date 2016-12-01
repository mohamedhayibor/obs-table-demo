// Copyright (c) 2016, Mohamed Hayibor. All rights reserved. Use of this source code
// is governed by a MIT license that can be found in the LICENSE file.

import 'dart:html';

void main() {
  int numOfCells = 1100;
  TableElement demoTable = buildTable(numOfCells);
  querySelector('#output').children.add(demoTable);
}

TableElement buildTable(int numCells) {
  // creating the table
  TableElement table = new TableElement();

  // Table header
  table.createTHead().text = "Header";

  // Table body
  TableSectionElement tBody = table.createTBody();

  // appending cells into tBody
  for (var i = 0; i < numCells; i++) {
    tBody.insertRow(i).text = "Cell $i";
  }

  // Table Footer
  table.createTFoot().text = "End of table :)";

  return table;
}
