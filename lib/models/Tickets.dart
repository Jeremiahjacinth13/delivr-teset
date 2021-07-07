class Ticket {
  Ticket({
    required this.name,
    required this.price,
    required this.dateCreated,
  });

  final String name;
  final double price;
  final DateTime dateCreated;
}

List<Ticket> tickets = [
  Ticket(
      name: "Tia Maria", price: 2131.33, dateCreated: DateTime(2021, 03, 06)),
  Ticket(
      name: "Monitor Dell", price: 1764.90, dateCreated: DateTime(2021, 5, 3)),
  Ticket(
      name: "League of Legends",
      price: 64.00,
      dateCreated: DateTime(2021, 8, 9)),
  Ticket(
      name: "Aluguel de Julho",
      price: 5531.00,
      dateCreated: DateTime(2021, 8, 9)),
  Ticket(name: "Boteco da Vo", price: 14.00, dateCreated: DateTime(2021, 3, 6)),
  Ticket(name: "Pain", price: 60.45, dateCreated: DateTime(2020, 3, 20)),
  Ticket(name: "Joy", price: 104.50, dateCreated: DateTime(2020, 3, 20)),
  Ticket(name: "Freedom", price: 305.02, dateCreated: DateTime(2020, 3, 20)),
  Ticket(name: "Ecstasy", price: 104.50, dateCreated: DateTime(2020, 3, 20)),
  Ticket(name: "Winning", price: 305.02, dateCreated: DateTime(2020, 3, 20)),
  Ticket(name: "Oppression", price: 60.45, dateCreated: DateTime(2020, 3, 20)),
  Ticket(name: "Static", price: 104.50, dateCreated: DateTime(2020, 3, 20)),
  Ticket(name: "Dynamic", price: 305.02, dateCreated: DateTime(2020, 3, 20)),
  Ticket(
      name: "Understanding", price: 305.02, dateCreated: DateTime(2020, 3, 20)),
  Ticket(name: "Pain", price: 60.45, dateCreated: DateTime(2020, 3, 20)),
  Ticket(name: "Joy", price: 104.50, dateCreated: DateTime(2020, 3, 20)),
  Ticket(name: "Freedom", price: 305.02, dateCreated: DateTime(2020, 3, 20)),
  Ticket(name: "Ecstasy", price: 104.50, dateCreated: DateTime(2020, 3, 20)),
  Ticket(name: "Winning", price: 305.02, dateCreated: DateTime(2020, 3, 20)),
  Ticket(name: "Oppression", price: 60.45, dateCreated: DateTime(2020, 3, 20)),
  Ticket(name: "Static", price: 104.50, dateCreated: DateTime(2020, 3, 20)),
  Ticket(name: "Dynamic", price: 305.02, dateCreated: DateTime(2020, 3, 20)),
];
