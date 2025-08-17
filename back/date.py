import datetime
from PySide6.QtCore import QObject, Slot, Signal, QTimer

class ShowDate(QObject):
    dateChanged = Signal(str)
    timeChanged = Signal(str)

    def __init__(self, parent=None):
        super().__init__(parent)

        # methode declaration
        self.update_datetime()

        self._timer = QTimer(self)
        self._timer.timeout.connect(self.update_datetime)
        self._timer.start(1000)

    @Slot()
    def update_datetime(self):
        now = datetime.datetime.now()
        current_date = now.strftime("%x")
        current_time = now.strftime("%X")

        self.dateChanged.emit(current_date)
        self.timeChanged.emit(current_time)