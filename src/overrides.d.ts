declare namespace utf8 {
    function codes(s: string): LuaTupleIterable<[number, number]>
}

declare namespace string {
    /**
     * @tuplereturn
     */
    function byte(input: string, i: number, j?: number): number[]
}

declare module "json" {
    function encode(value: any): string
    function decode(input: string): any
}
