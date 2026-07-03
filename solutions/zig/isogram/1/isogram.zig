pub fn isIsogram(str: []const u8) bool {
    var seen = [_]bool{false} ** 26;

    for (str) |c| {
        const lower = if (c >= 'A' and c <= 'Z') c + 32 else c;

        if (lower >= 'a' and lower <= 'z') {
            const idx = lower - 'a';
            if (seen[idx]) return false;
            seen[idx] = true;
        }
    }
    return true;
}
