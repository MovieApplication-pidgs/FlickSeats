//
//  Seat.swift
//  MovieBookingApplication
//
//  Created by Brian Suárez Santiago on 28/08/24.
//

import Foundation

struct Seat {
  var row: Int
  var seat: Int
  var selected: Bool
  var sold: Bool
  var type: String?

  var seatCode: String {
    get { "\(["A", "B", "C", "D", "E", "F", "G", "H", "J"][row])\(seat)" }
  }

  func isIdentical(_ otherSeat: Seat) -> Bool { seatCode == otherSeat.seatCode }

  init(_ row: Int, _ seat: Int, selected: Bool = false, sold: Bool = false, type: String? = nil) {
    self.row = row
    self.seat = seat
    self.selected = selected
    self.sold = sold
    self.type = type
  }
}
