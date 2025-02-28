# killstopXXX.awk
BEGIN {
    stop["is"] = 1
    stop["the"] = 1
    stop["in"] = 1
    stop["but"] = 1
    stop["can"] = 1
    stop["a"] = 1
    stop["of"] = 1
    stop["to"] = 1
    stop["that"] = 1
    stop["it"] = 1
    stop["for"] = 1
    stop["on"] = 1
    stop["with"] = 1
    stop["as"] = 1
    stop["this"] = 1
    stop["was"] = 1
    stop["at"] = 1
    stop["by"] = 1
    stop["an"] = 1
    stop["be"] = 1
    stop["from"] = 1
    stop["or"] = 1
    stop["are"] = 1
}
{
    for (i = 1; i <= NF; i++) {
        if (!($i in stop)) {
            printf "%s%s", $i, (i < NF ? " " : "\n")
        }
    }
}