work day part:
    cargo watch -x "check -p {{day}}" -s "just test {{part}} -p {{day}}" -s "just lint {{day}}" -s "just bench {{day}} {{part}}" -s "just flamegraph {{day}} {{part}}"
test part +FLAGS='-p day-01':
    cargo nextest run {{FLAGS}} {{part}}
create day:
    cargo generate --path ./daily-template --name {{day}}
