export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'blobToText' : IDL.Func([IDL.Vec(IDL.Nat8)], [IDL.Opt(IDL.Text)], []),
    'greet' : IDL.Func([IDL.Text], [IDL.Text], []),
    'test' : IDL.Func([], [], []),
    'test1' : IDL.Func([], [IDL.Bool], []),
    'test2' : IDL.Func([], [IDL.Bool], []),
    'test3' : IDL.Func([], [IDL.Bool], []),
    'test4' : IDL.Func([], [IDL.Bool], []),
    'test5' : IDL.Func([], [], []),
    'test6' : IDL.Func([], [], []),
    'test7' : IDL.Func([], [], []),
    'test8' : IDL.Func([], [], []),
    'textToBlob' : IDL.Func([IDL.Text], [IDL.Vec(IDL.Nat8)], []),
  });
};
export const init = ({ IDL }) => { return []; };
