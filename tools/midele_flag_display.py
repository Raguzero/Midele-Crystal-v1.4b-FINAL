#!/usr/bin/env python3

# Script que muestra las flags de un save de midele utilizando una tabla.
# Para usarlo, ejecutar el script y pasarle como argumento la ruta del save

from flag_data import FLAG_DATA
from PyQt5.QtWidgets import QApplication, QWidget, QTableView, QMainWindow, QVBoxLayout, QLineEdit
from PyQt5.QtCore import Qt, QSortFilterProxyModel, QAbstractTableModel
import sys


class TableModel(QAbstractTableModel):
    header_labels = ['Flag name', 'Flag ID', 'Enabled']

    def __init__(self, data):
        super().__init__()
        self._data = data

    def data(self, index, role):
        if role == Qt.DisplayRole:
            # See below for the nested-list data structure.
            # .row() indexes into the outer list,
            # .column() indexes into the sub-list
            return self._data[index.row()][index.column()]

    def rowCount(self, index):
        # The length of the outer list.
        return len(self._data)

    def columnCount(self, index):
        # The following takes the first sub-list, and returns
        # the length (only works if all rows are an equal length)
        return len(self._data[0])

    def headerData(self, section, orientation, role=Qt.DisplayRole):

        if role == Qt.DisplayRole and orientation == Qt.Horizontal:
            return self.header_labels[section]
        return QAbstractTableModel.headerData(self, section, orientation, role)


class MainWindow(QMainWindow):
    def __init__(self, flags):
        super().__init__()

        self.table = QTableView()

        data = [list(flag) for flag in flags]

        self.model = TableModel(data)
        self.proxy_model = QSortFilterProxyModel()
        self.proxy_model.setFilterKeyColumn(-1)  # Search all columns.
        self.proxy_model.setSourceModel(self.model)

        self.table.setModel(self.proxy_model)

        self.table.setColumnWidth(0, 350)
        self.table.setColumnWidth(1, 50)
        self.table.setColumnWidth(2, 50)

        self.searchbar = QLineEdit()

        self.searchbar.textChanged.connect(
            self.proxy_model.setFilterFixedString)

        layout = QVBoxLayout()

        layout.addWidget(self.searchbar)
        layout.addWidget(self.table)

        container = QWidget()
        container.setLayout(layout)

        self.setCentralWidget(container)


# Save flags offset
FLAGS_OFFSET = 0x1800


def get_flag(savefile, flag_number: int):
    """Obtiene una flag específica de un archivo de guardado en base al
    número de la flag"""
    start_offset = flag_number // 8
    bit_position = flag_number % 8
    savefile.seek(FLAGS_OFFSET + start_offset)

    flag_byte = savefile.read(1)

    flag_bit = (int.from_bytes(flag_byte, byteorder=sys.byteorder)
                >> bit_position) & 1
    return flag_bit


def get_flags_from_save(save_path: str):
    """Obtiene las flags de un archivo"""
    save_flags = []
    with open(save_path, 'rb') as savefile:
        for flag in FLAG_DATA:
            flag_bit = get_flag(savefile, flag[1])
            save_flag = flag + (flag_bit,)
            save_flags.append(save_flag)
    return save_flags


def display_flags(flags: list):
    app = QApplication(sys.argv)
    window = MainWindow(flags)
    window.setWindowTitle("Midele Flag Viewer")
    window.setMinimumWidth(800)
    window.setMinimumHeight(600)
    window.show()
    app.exec_()


def main(argv):
    if len(argv) != 2:
        print("Error: se necesita la ruta del archivo .sav", file=sys.stderr)
        sys.exit(3)
    save_flags = get_flags_from_save(sys.argv[1])
    display_flags(save_flags)


if __name__ == "__main__":
    main(sys.argv)
