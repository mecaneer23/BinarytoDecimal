// zig run BinarytoDecimal.zig

const std = @import("std");

pub fn binary_to_decimal(binary_number: usize) !usize {
    if (binary_number == 0) {
        return 0;
    }
    const length: usize = @floatToInt(usize, std.math.floor(std.math.log10(@intToFloat(f32, binary_number)))) + 1;
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();
    var value = try allocator.alloc(u8, length + 1);
    _ = try std.fmt.bufPrint(value, "{d}", .{binary_number});
    var output: usize = 0;
    var position: usize = 0;
    var chr: u8 = '0';
    while (position < length) : (position += 1) {
        chr = value[position];
        if (chr == '1') {
            output += std.math.pow(usize, 2, length - position - 1);
        } else if (chr == '0') {
            continue;
        } else {
            std.debug.print("Make sure you only input binary values", .{});
            std.os.exit(1);
        }
    }
    defer allocator.free(value);
    return output;

}

fn input(comptime query_string: []const u8) !usize {
    var buf: [32]u8 = undefined;
    try std.io.getStdOut().writer().print(query_string, .{});

    if (try std.io.getStdIn().reader().readUntilDelimiterOrEof(buf[0..], '\n')) |user_input| {
        return std.fmt.parseInt(usize, user_input, 10);
    } else {
        return @as(usize, 0);
    }
}

pub fn main() !void {
    std.debug.print("{d}\n", .{binary_to_decimal(try input("Binary Number: "))});
}
