class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);

  final String title;
  final List<Entry> children;
}

final List<Entry> data = <Entry>[
  Entry(
    'Infraestructura',
    <Entry>[
      Entry('Windows'),
      Entry('Linux'),
      Entry('Cisco'),
    ],
  ),
];

final List<Entry> data2 = <Entry>[
  Entry(
    'Desarrollo',
    <Entry>[
      Entry('Java'),
      Entry('phyton'),
      Entry('dart'),
    ],
  ),
];

final List<Entry> data3 = <Entry>[
  Entry(
    '.....',
  ),
];
