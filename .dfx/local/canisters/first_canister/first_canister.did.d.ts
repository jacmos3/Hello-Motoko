import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';

export interface _SERVICE {
  'blobToText' : ActorMethod<[Uint8Array], [] | [string]>,
  'greet' : ActorMethod<[string], string>,
  'test' : ActorMethod<[], undefined>,
  'test1' : ActorMethod<[], boolean>,
  'test2' : ActorMethod<[], boolean>,
  'test3' : ActorMethod<[], boolean>,
  'test4' : ActorMethod<[], boolean>,
  'test5' : ActorMethod<[], undefined>,
  'test6' : ActorMethod<[], undefined>,
  'test7' : ActorMethod<[], undefined>,
  'test8' : ActorMethod<[], undefined>,
  'textToBlob' : ActorMethod<[string], Uint8Array>,
}
