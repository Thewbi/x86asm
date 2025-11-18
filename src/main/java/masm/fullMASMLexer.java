// Generated from masm\fullMASMLexer.g4 by ANTLR 4.9.1
package masm;
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class fullMASMLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.9.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		LINE_COMMENT=1, COMMENT=2, BLOCK_COMMENT=3, ASTERISK=4, AND=5, EQ=6, NE=7, 
		LT=8, LE=9, GT=10, GE=11, OR=12, XOR=13, BIN_NUMERIC=14, DEC_NUMERIC=15, 
		HEX_NUMERIC=16, COLON=17, DOT=18, DOT_386=19, DOT_386P=20, DOT_486=21, 
		DOT_486P=22, DOT_586=23, DOT_586P=24, DOT_686=25, DOT_686P=26, DOT_387=27, 
		DOT_STACK=28, LPAREN=29, RPAREN=30, PLUS=31, SLASH=32, SHL=33, SHR=34, 
		INCLUDE=35, MINUS=36, MOD=37, NOT=38, SUBTITLE=39, SUBTTL=40, TITLE=41, 
		IDENTIFIER=42, WS=43, NEWLINE=44, TM_NEWLINE=45, TM_EOL=46, TM_SPACE=47, 
		TM_TAB=48, TM_DATA=49;
	public static final int
		TITLEMODE=1;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE", "TITLEMODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"LINE_COMMENT", "COMMENT", "BLOCK_COMMENT", "A", "B", "C", "D", "E", 
			"F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", 
			"T", "U", "V", "W", "X", "Y", "Z", "ASTERISK", "AND", "EQ", "NE", "LT", 
			"LE", "GT", "GE", "OR", "XOR", "BIN_NUMERIC", "DEC_NUMERIC", "HEX_NUMERIC", 
			"COLON", "DOT", "DOT_386", "DOT_386P", "DOT_486", "DOT_486P", "DOT_586", 
			"DOT_586P", "DOT_686", "DOT_686P", "DOT_387", "DOT_STACK", "LPAREN", 
			"RPAREN", "PLUS", "SLASH", "SHL", "SHR", "INCLUDE", "MINUS", "MOD", "NOT", 
			"SUBTITLE", "SUBTTL", "TITLE", "IDENTIFIER", "WS", "NEWLINE", "TM_NEWLINE", 
			"TM_EOL", "TM_SPACE", "TM_TAB", "TM_DATA"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, null, null, null, "'*'", null, null, null, null, null, null, null, 
			null, null, null, null, null, "':'", "'.'", null, null, null, null, null, 
			null, null, null, null, null, "'('", "')'", "'+'", "'/'", null, null, 
			null, "'-'", null, null, null, null, null, null, null, null, null, null, 
			"' '"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, "LINE_COMMENT", "COMMENT", "BLOCK_COMMENT", "ASTERISK", "AND", 
			"EQ", "NE", "LT", "LE", "GT", "GE", "OR", "XOR", "BIN_NUMERIC", "DEC_NUMERIC", 
			"HEX_NUMERIC", "COLON", "DOT", "DOT_386", "DOT_386P", "DOT_486", "DOT_486P", 
			"DOT_586", "DOT_586P", "DOT_686", "DOT_686P", "DOT_387", "DOT_STACK", 
			"LPAREN", "RPAREN", "PLUS", "SLASH", "SHL", "SHR", "INCLUDE", "MINUS", 
			"MOD", "NOT", "SUBTITLE", "SUBTTL", "TITLE", "IDENTIFIER", "WS", "NEWLINE", 
			"TM_NEWLINE", "TM_EOL", "TM_SPACE", "TM_TAB", "TM_DATA"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}


	public fullMASMLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "fullMASMLexer.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\63\u01e5\b\1\b\1"+
		"\4\2\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t"+
		"\n\4\13\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4"+
		"\22\t\22\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4"+
		"\31\t\31\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4"+
		" \t \4!\t!\4\"\t\"\4#\t#\4$\t$\4%\t%\4&\t&\4\'\t\'\4(\t(\4)\t)\4*\t*\4"+
		"+\t+\4,\t,\4-\t-\4.\t.\4/\t/\4\60\t\60\4\61\t\61\4\62\t\62\4\63\t\63\4"+
		"\64\t\64\4\65\t\65\4\66\t\66\4\67\t\67\48\t8\49\t9\4:\t:\4;\t;\4<\t<\4"+
		"=\t=\4>\t>\4?\t?\4@\t@\4A\tA\4B\tB\4C\tC\4D\tD\4E\tE\4F\tF\4G\tG\4H\t"+
		"H\4I\tI\4J\tJ\4K\tK\4L\tL\3\2\3\2\7\2\u009d\n\2\f\2\16\2\u00a0\13\2\3"+
		"\2\3\2\3\3\3\3\7\3\u00a6\n\3\f\3\16\3\u00a9\13\3\3\3\3\3\3\4\3\4\3\4\3"+
		"\4\7\4\u00b1\n\4\f\4\16\4\u00b4\13\4\3\4\3\4\3\4\3\4\3\4\3\5\3\5\3\6\3"+
		"\6\3\7\3\7\3\b\3\b\3\t\3\t\3\n\3\n\3\13\3\13\3\f\3\f\3\r\3\r\3\16\3\16"+
		"\3\17\3\17\3\20\3\20\3\21\3\21\3\22\3\22\3\23\3\23\3\24\3\24\3\25\3\25"+
		"\3\26\3\26\3\27\3\27\3\30\3\30\3\31\3\31\3\32\3\32\3\33\3\33\3\34\3\34"+
		"\3\35\3\35\3\36\3\36\3\37\3\37\3 \3 \3 \3 \3!\3!\3!\3\"\3\"\3\"\3#\3#"+
		"\3#\3$\3$\3$\3%\3%\3%\3&\3&\3&\3\'\3\'\3\'\3(\3(\3(\3(\3)\3)\6)\u0110"+
		"\n)\r)\16)\u0111\3*\5*\u0115\n*\3*\6*\u0118\n*\r*\16*\u0119\3+\3+\6+\u011e"+
		"\n+\r+\16+\u011f\3,\3,\3-\3-\3.\3.\3.\3.\3.\3/\3/\3/\3/\3/\3/\3\60\3\60"+
		"\3\60\3\60\3\60\3\61\3\61\3\61\3\61\3\61\3\61\3\62\3\62\3\62\3\62\3\62"+
		"\3\63\3\63\3\63\3\63\3\63\3\63\3\64\3\64\3\64\3\64\3\64\3\65\3\65\3\65"+
		"\3\65\3\65\3\65\3\66\3\66\3\66\3\66\3\66\3\67\3\67\3\67\3\67\3\67\3\67"+
		"\3\67\38\38\39\39\3:\3:\3;\3;\3<\3<\3<\3<\3=\3=\3=\3=\3>\3>\3>\3>\3>\3"+
		">\3>\3>\3?\3?\3@\3@\3@\3@\3A\3A\3A\3A\3B\3B\3B\3B\3B\3B\3B\3B\3B\3B\3"+
		"B\3C\3C\3C\3C\3C\3C\3C\3C\3C\3D\3D\3D\3D\3D\3D\3E\5E\u019b\nE\3E\5E\u019e"+
		"\nE\3E\7E\u01a1\nE\fE\16E\u01a4\13E\3E\7E\u01a7\nE\fE\16E\u01aa\13E\3"+
		"E\6E\u01ad\nE\rE\16E\u01ae\3E\5E\u01b2\nE\3E\7E\u01b5\nE\fE\16E\u01b8"+
		"\13E\3E\6E\u01bb\nE\rE\16E\u01bc\7E\u01bf\nE\fE\16E\u01c2\13E\3F\6F\u01c5"+
		"\nF\rF\16F\u01c6\3F\3F\3G\3G\3H\3H\3H\3H\3H\3I\6I\u01d3\nI\rI\16I\u01d4"+
		"\3I\3I\3J\3J\3K\6K\u01dc\nK\rK\16K\u01dd\3L\3L\6L\u01e2\nL\rL\16L\u01e3"+
		"\3\u00b2\2M\4\3\6\4\b\5\n\2\f\2\16\2\20\2\22\2\24\2\26\2\30\2\32\2\34"+
		"\2\36\2 \2\"\2$\2&\2(\2*\2,\2.\2\60\2\62\2\64\2\66\28\2:\2<\2>\6@\7B\b"+
		"D\tF\nH\13J\fL\rN\16P\17R\20T\21V\22X\23Z\24\\\25^\26`\27b\30d\31f\32"+
		"h\33j\34l\35n\36p\37r t!v\"x#z$|%~&\u0080\'\u0082(\u0084)\u0086*\u0088"+
		"+\u008a,\u008c-\u008e.\u0090/\u0092\60\u0094\61\u0096\62\u0098\63\4\2"+
		"\3&\4\2\f\f\17\17\3\2\f\f\4\2CCcc\4\2DDdd\4\2EEee\4\2FFff\4\2GGgg\4\2"+
		"HHhh\4\2IIii\4\2JJjj\4\2KKkk\4\2LLll\4\2MMmm\4\2NNnn\4\2OOoo\4\2PPpp\4"+
		"\2QQqq\4\2RRrr\4\2SSss\4\2TTtt\4\2UUuu\4\2VVvv\4\2WWww\4\2XXxx\4\2YYy"+
		"y\4\2ZZzz\4\2[[{{\4\2\\\\||\3\2\62\63\3\2\62;\5\2\62;CHch\6\2\62;C\\a"+
		"ac|\4\2C\\c|\5\2\13\13\17\17\"\"\3\2\13\13\7\2*+./\62;C\\c|\2\u01de\2"+
		"\4\3\2\2\2\2\6\3\2\2\2\2\b\3\2\2\2\2>\3\2\2\2\2@\3\2\2\2\2B\3\2\2\2\2"+
		"D\3\2\2\2\2F\3\2\2\2\2H\3\2\2\2\2J\3\2\2\2\2L\3\2\2\2\2N\3\2\2\2\2P\3"+
		"\2\2\2\2R\3\2\2\2\2T\3\2\2\2\2V\3\2\2\2\2X\3\2\2\2\2Z\3\2\2\2\2\\\3\2"+
		"\2\2\2^\3\2\2\2\2`\3\2\2\2\2b\3\2\2\2\2d\3\2\2\2\2f\3\2\2\2\2h\3\2\2\2"+
		"\2j\3\2\2\2\2l\3\2\2\2\2n\3\2\2\2\2p\3\2\2\2\2r\3\2\2\2\2t\3\2\2\2\2v"+
		"\3\2\2\2\2x\3\2\2\2\2z\3\2\2\2\2|\3\2\2\2\2~\3\2\2\2\2\u0080\3\2\2\2\2"+
		"\u0082\3\2\2\2\2\u0084\3\2\2\2\2\u0086\3\2\2\2\2\u0088\3\2\2\2\2\u008a"+
		"\3\2\2\2\2\u008c\3\2\2\2\2\u008e\3\2\2\2\3\u0090\3\2\2\2\3\u0092\3\2\2"+
		"\2\3\u0094\3\2\2\2\3\u0096\3\2\2\2\3\u0098\3\2\2\2\4\u009a\3\2\2\2\6\u00a3"+
		"\3\2\2\2\b\u00ac\3\2\2\2\n\u00ba\3\2\2\2\f\u00bc\3\2\2\2\16\u00be\3\2"+
		"\2\2\20\u00c0\3\2\2\2\22\u00c2\3\2\2\2\24\u00c4\3\2\2\2\26\u00c6\3\2\2"+
		"\2\30\u00c8\3\2\2\2\32\u00ca\3\2\2\2\34\u00cc\3\2\2\2\36\u00ce\3\2\2\2"+
		" \u00d0\3\2\2\2\"\u00d2\3\2\2\2$\u00d4\3\2\2\2&\u00d6\3\2\2\2(\u00d8\3"+
		"\2\2\2*\u00da\3\2\2\2,\u00dc\3\2\2\2.\u00de\3\2\2\2\60\u00e0\3\2\2\2\62"+
		"\u00e2\3\2\2\2\64\u00e4\3\2\2\2\66\u00e6\3\2\2\28\u00e8\3\2\2\2:\u00ea"+
		"\3\2\2\2<\u00ec\3\2\2\2>\u00ee\3\2\2\2@\u00f0\3\2\2\2B\u00f4\3\2\2\2D"+
		"\u00f7\3\2\2\2F\u00fa\3\2\2\2H\u00fd\3\2\2\2J\u0100\3\2\2\2L\u0103\3\2"+
		"\2\2N\u0106\3\2\2\2P\u0109\3\2\2\2R\u010d\3\2\2\2T\u0114\3\2\2\2V\u011b"+
		"\3\2\2\2X\u0121\3\2\2\2Z\u0123\3\2\2\2\\\u0125\3\2\2\2^\u012a\3\2\2\2"+
		"`\u0130\3\2\2\2b\u0135\3\2\2\2d\u013b\3\2\2\2f\u0140\3\2\2\2h\u0146\3"+
		"\2\2\2j\u014b\3\2\2\2l\u0151\3\2\2\2n\u0156\3\2\2\2p\u015d\3\2\2\2r\u015f"+
		"\3\2\2\2t\u0161\3\2\2\2v\u0163\3\2\2\2x\u0165\3\2\2\2z\u0169\3\2\2\2|"+
		"\u016d\3\2\2\2~\u0175\3\2\2\2\u0080\u0177\3\2\2\2\u0082\u017b\3\2\2\2"+
		"\u0084\u017f\3\2\2\2\u0086\u018a\3\2\2\2\u0088\u0193\3\2\2\2\u008a\u019a"+
		"\3\2\2\2\u008c\u01c4\3\2\2\2\u008e\u01ca\3\2\2\2\u0090\u01cc\3\2\2\2\u0092"+
		"\u01d2\3\2\2\2\u0094\u01d8\3\2\2\2\u0096\u01db\3\2\2\2\u0098\u01e1\3\2"+
		"\2\2\u009a\u009e\7=\2\2\u009b\u009d\n\2\2\2\u009c\u009b\3\2\2\2\u009d"+
		"\u00a0\3\2\2\2\u009e\u009c\3\2\2\2\u009e\u009f\3\2\2\2\u009f\u00a1\3\2"+
		"\2\2\u00a0\u009e\3\2\2\2\u00a1\u00a2\b\2\2\2\u00a2\5\3\2\2\2\u00a3\u00a7"+
		"\7=\2\2\u00a4\u00a6\n\3\2\2\u00a5\u00a4\3\2\2\2\u00a6\u00a9\3\2\2\2\u00a7"+
		"\u00a5\3\2\2\2\u00a7\u00a8\3\2\2\2\u00a8\u00aa\3\2\2\2\u00a9\u00a7\3\2"+
		"\2\2\u00aa\u00ab\b\3\2\2\u00ab\7\3\2\2\2\u00ac\u00ad\7\61\2\2\u00ad\u00ae"+
		"\7,\2\2\u00ae\u00b2\3\2\2\2\u00af\u00b1\13\2\2\2\u00b0\u00af\3\2\2\2\u00b1"+
		"\u00b4\3\2\2\2\u00b2\u00b3\3\2\2\2\u00b2\u00b0\3\2\2\2\u00b3\u00b5\3\2"+
		"\2\2\u00b4\u00b2\3\2\2\2\u00b5\u00b6\7,\2\2\u00b6\u00b7\7\61\2\2\u00b7"+
		"\u00b8\3\2\2\2\u00b8\u00b9\b\4\3\2\u00b9\t\3\2\2\2\u00ba\u00bb\t\4\2\2"+
		"\u00bb\13\3\2\2\2\u00bc\u00bd\t\5\2\2\u00bd\r\3\2\2\2\u00be\u00bf\t\6"+
		"\2\2\u00bf\17\3\2\2\2\u00c0\u00c1\t\7\2\2\u00c1\21\3\2\2\2\u00c2\u00c3"+
		"\t\b\2\2\u00c3\23\3\2\2\2\u00c4\u00c5\t\t\2\2\u00c5\25\3\2\2\2\u00c6\u00c7"+
		"\t\n\2\2\u00c7\27\3\2\2\2\u00c8\u00c9\t\13\2\2\u00c9\31\3\2\2\2\u00ca"+
		"\u00cb\t\f\2\2\u00cb\33\3\2\2\2\u00cc\u00cd\t\r\2\2\u00cd\35\3\2\2\2\u00ce"+
		"\u00cf\t\16\2\2\u00cf\37\3\2\2\2\u00d0\u00d1\t\17\2\2\u00d1!\3\2\2\2\u00d2"+
		"\u00d3\t\20\2\2\u00d3#\3\2\2\2\u00d4\u00d5\t\21\2\2\u00d5%\3\2\2\2\u00d6"+
		"\u00d7\t\22\2\2\u00d7\'\3\2\2\2\u00d8\u00d9\t\23\2\2\u00d9)\3\2\2\2\u00da"+
		"\u00db\t\24\2\2\u00db+\3\2\2\2\u00dc\u00dd\t\25\2\2\u00dd-\3\2\2\2\u00de"+
		"\u00df\t\26\2\2\u00df/\3\2\2\2\u00e0\u00e1\t\27\2\2\u00e1\61\3\2\2\2\u00e2"+
		"\u00e3\t\30\2\2\u00e3\63\3\2\2\2\u00e4\u00e5\t\31\2\2\u00e5\65\3\2\2\2"+
		"\u00e6\u00e7\t\32\2\2\u00e7\67\3\2\2\2\u00e8\u00e9\t\33\2\2\u00e99\3\2"+
		"\2\2\u00ea\u00eb\t\34\2\2\u00eb;\3\2\2\2\u00ec\u00ed\t\35\2\2\u00ed=\3"+
		"\2\2\2\u00ee\u00ef\7,\2\2\u00ef?\3\2\2\2\u00f0\u00f1\7C\2\2\u00f1\u00f2"+
		"\7P\2\2\u00f2\u00f3\7F\2\2\u00f3A\3\2\2\2\u00f4\u00f5\7G\2\2\u00f5\u00f6"+
		"\7S\2\2\u00f6C\3\2\2\2\u00f7\u00f8\7P\2\2\u00f8\u00f9\7G\2\2\u00f9E\3"+
		"\2\2\2\u00fa\u00fb\7N\2\2\u00fb\u00fc\7V\2\2\u00fcG\3\2\2\2\u00fd\u00fe"+
		"\7N\2\2\u00fe\u00ff\7G\2\2\u00ffI\3\2\2\2\u0100\u0101\7I\2\2\u0101\u0102"+
		"\7V\2\2\u0102K\3\2\2\2\u0103\u0104\7I\2\2\u0104\u0105\7G\2\2\u0105M\3"+
		"\2\2\2\u0106\u0107\7Q\2\2\u0107\u0108\7T\2\2\u0108O\3\2\2\2\u0109\u010a"+
		"\7Z\2\2\u010a\u010b\7Q\2\2\u010b\u010c\7T\2\2\u010cQ\3\2\2\2\u010d\u010f"+
		"\7\'\2\2\u010e\u0110\t\36\2\2\u010f\u010e\3\2\2\2\u0110\u0111\3\2\2\2"+
		"\u0111\u010f\3\2\2\2\u0111\u0112\3\2\2\2\u0112S\3\2\2\2\u0113\u0115\7"+
		"/\2\2\u0114\u0113\3\2\2\2\u0114\u0115\3\2\2\2\u0115\u0117\3\2\2\2\u0116"+
		"\u0118\t\37\2\2\u0117\u0116\3\2\2\2\u0118\u0119\3\2\2\2\u0119\u0117\3"+
		"\2\2\2\u0119\u011a\3\2\2\2\u011aU\3\2\2\2\u011b\u011d\7&\2\2\u011c\u011e"+
		"\t \2\2\u011d\u011c\3\2\2\2\u011e\u011f\3\2\2\2\u011f\u011d\3\2\2\2\u011f"+
		"\u0120\3\2\2\2\u0120W\3\2\2\2\u0121\u0122\7<\2\2\u0122Y\3\2\2\2\u0123"+
		"\u0124\7\60\2\2\u0124[\3\2\2\2\u0125\u0126\7\60\2\2\u0126\u0127\7\65\2"+
		"\2\u0127\u0128\7:\2\2\u0128\u0129\78\2\2\u0129]\3\2\2\2\u012a\u012b\7"+
		"\60\2\2\u012b\u012c\7\65\2\2\u012c\u012d\7:\2\2\u012d\u012e\78\2\2\u012e"+
		"\u012f\7r\2\2\u012f_\3\2\2\2\u0130\u0131\7\60\2\2\u0131\u0132\7\66\2\2"+
		"\u0132\u0133\7:\2\2\u0133\u0134\78\2\2\u0134a\3\2\2\2\u0135\u0136\7\60"+
		"\2\2\u0136\u0137\7\66\2\2\u0137\u0138\7:\2\2\u0138\u0139\78\2\2\u0139"+
		"\u013a\7R\2\2\u013ac\3\2\2\2\u013b\u013c\7\60\2\2\u013c\u013d\7\67\2\2"+
		"\u013d\u013e\7:\2\2\u013e\u013f\78\2\2\u013fe\3\2\2\2\u0140\u0141\7\60"+
		"\2\2\u0141\u0142\7\67\2\2\u0142\u0143\7:\2\2\u0143\u0144\78\2\2\u0144"+
		"\u0145\7R\2\2\u0145g\3\2\2\2\u0146\u0147\7\60\2\2\u0147\u0148\78\2\2\u0148"+
		"\u0149\7:\2\2\u0149\u014a\78\2\2\u014ai\3\2\2\2\u014b\u014c\7\60\2\2\u014c"+
		"\u014d\78\2\2\u014d\u014e\7:\2\2\u014e\u014f\78\2\2\u014f\u0150\7R\2\2"+
		"\u0150k\3\2\2\2\u0151\u0152\7\60\2\2\u0152\u0153\7\65\2\2\u0153\u0154"+
		"\7:\2\2\u0154\u0155\79\2\2\u0155m\3\2\2\2\u0156\u0157\5Z-\2\u0157\u0158"+
		"\7u\2\2\u0158\u0159\7v\2\2\u0159\u015a\7c\2\2\u015a\u015b\7e\2\2\u015b"+
		"\u015c\7m\2\2\u015co\3\2\2\2\u015d\u015e\7*\2\2\u015eq\3\2\2\2\u015f\u0160"+
		"\7+\2\2\u0160s\3\2\2\2\u0161\u0162\7-\2\2\u0162u\3\2\2\2\u0163\u0164\7"+
		"\61\2\2\u0164w\3\2\2\2\u0165\u0166\7U\2\2\u0166\u0167\7J\2\2\u0167\u0168"+
		"\7N\2\2\u0168y\3\2\2\2\u0169\u016a\7U\2\2\u016a\u016b\7J\2\2\u016b\u016c"+
		"\7T\2\2\u016c{\3\2\2\2\u016d\u016e\5\32\r\2\u016e\u016f\5$\22\2\u016f"+
		"\u0170\5\16\7\2\u0170\u0171\5 \20\2\u0171\u0172\5\62\31\2\u0172\u0173"+
		"\5\20\b\2\u0173\u0174\5\22\t\2\u0174}\3\2\2\2\u0175\u0176\7/\2\2\u0176"+
		"\177\3\2\2\2\u0177\u0178\7O\2\2\u0178\u0179\7Q\2\2\u0179\u017a\7F\2\2"+
		"\u017a\u0081\3\2\2\2\u017b\u017c\7P\2\2\u017c\u017d\7Q\2\2\u017d\u017e"+
		"\7V\2\2\u017e\u0083\3\2\2\2\u017f\u0180\5.\27\2\u0180\u0181\5\62\31\2"+
		"\u0181\u0182\5\f\6\2\u0182\u0183\5\60\30\2\u0183\u0184\5\32\r\2\u0184"+
		"\u0185\5\60\30\2\u0185\u0186\5 \20\2\u0186\u0187\5\22\t\2\u0187\u0188"+
		"\3\2\2\2\u0188\u0189\bB\4\2\u0189\u0085\3\2\2\2\u018a\u018b\5.\27\2\u018b"+
		"\u018c\5\62\31\2\u018c\u018d\5\f\6\2\u018d\u018e\5\60\30\2\u018e\u018f"+
		"\5\60\30\2\u018f\u0190\5 \20\2\u0190\u0191\3\2\2\2\u0191\u0192\bC\4\2"+
		"\u0192\u0087\3\2\2\2\u0193\u0194\5\60\30\2\u0194\u0195\5\32\r\2\u0195"+
		"\u0196\5\60\30\2\u0196\u0197\5 \20\2\u0197\u0198\5\22\t\2\u0198\u0089"+
		"\3\2\2\2\u0199\u019b\7B\2\2\u019a\u0199\3\2\2\2\u019a\u019b\3\2\2\2\u019b"+
		"\u019d\3\2\2\2\u019c\u019e\5Z-\2\u019d\u019c\3\2\2\2\u019d\u019e\3\2\2"+
		"\2\u019e\u01a2\3\2\2\2\u019f\u01a1\7a\2\2\u01a0\u019f\3\2\2\2\u01a1\u01a4"+
		"\3\2\2\2\u01a2\u01a0\3\2\2\2\u01a2\u01a3\3\2\2\2\u01a3\u01a8\3\2\2\2\u01a4"+
		"\u01a2\3\2\2\2\u01a5\u01a7\t!\2\2\u01a6\u01a5\3\2\2\2\u01a7\u01aa\3\2"+
		"\2\2\u01a8\u01a6\3\2\2\2\u01a8\u01a9\3\2\2\2\u01a9\u01ac\3\2\2\2\u01aa"+
		"\u01a8\3\2\2\2\u01ab\u01ad\t\"\2\2\u01ac\u01ab\3\2\2\2\u01ad\u01ae\3\2"+
		"\2\2\u01ae\u01ac\3\2\2\2\u01ae\u01af\3\2\2\2\u01af\u01c0\3\2\2\2\u01b0"+
		"\u01b2\5Z-\2\u01b1\u01b0\3\2\2\2\u01b1\u01b2\3\2\2\2\u01b2\u01b6\3\2\2"+
		"\2\u01b3\u01b5\7a\2\2\u01b4\u01b3\3\2\2\2\u01b5\u01b8\3\2\2\2\u01b6\u01b4"+
		"\3\2\2\2\u01b6\u01b7\3\2\2\2\u01b7\u01ba\3\2\2\2\u01b8\u01b6\3\2\2\2\u01b9"+
		"\u01bb\t!\2\2\u01ba\u01b9\3\2\2\2\u01bb\u01bc\3\2\2\2\u01bc\u01ba\3\2"+
		"\2\2\u01bc\u01bd\3\2\2\2\u01bd\u01bf\3\2\2\2\u01be\u01b1\3\2\2\2\u01bf"+
		"\u01c2\3\2\2\2\u01c0\u01be\3\2\2\2\u01c0\u01c1\3\2\2\2\u01c1\u008b\3\2"+
		"\2\2\u01c2\u01c0\3\2\2\2\u01c3\u01c5\t#\2\2\u01c4\u01c3\3\2\2\2\u01c5"+
		"\u01c6\3\2\2\2\u01c6\u01c4\3\2\2\2\u01c6\u01c7\3\2\2\2\u01c7\u01c8\3\2"+
		"\2\2\u01c8\u01c9\bF\3\2\u01c9\u008d\3\2\2\2\u01ca\u01cb\t\3\2\2\u01cb"+
		"\u008f\3\2\2\2\u01cc\u01cd\t\3\2\2\u01cd\u01ce\3\2\2\2\u01ce\u01cf\bH"+
		"\5\2\u01cf\u01d0\bH\3\2\u01d0\u0091\3\2\2\2\u01d1\u01d3\t\2\2\2\u01d2"+
		"\u01d1\3\2\2\2\u01d3\u01d4\3\2\2\2\u01d4\u01d2\3\2\2\2\u01d4\u01d5\3\2"+
		"\2\2\u01d5\u01d6\3\2\2\2\u01d6\u01d7\bI\5\2\u01d7\u0093\3\2\2\2\u01d8"+
		"\u01d9\7\"\2\2\u01d9\u0095\3\2\2\2\u01da\u01dc\t$\2\2\u01db\u01da\3\2"+
		"\2\2\u01dc\u01dd\3\2\2\2\u01dd\u01db\3\2\2\2\u01dd\u01de\3\2\2\2\u01de"+
		"\u0097\3\2\2\2\u01df\u01e2\5Z-\2\u01e0\u01e2\t%\2\2\u01e1\u01df\3\2\2"+
		"\2\u01e1\u01e0\3\2\2\2\u01e2\u01e3\3\2\2\2\u01e3\u01e1\3\2\2\2\u01e3\u01e4"+
		"\3\2\2\2\u01e4\u0099\3\2\2\2\31\2\3\u009e\u00a7\u00b2\u0111\u0114\u0119"+
		"\u011f\u019a\u019d\u01a2\u01a8\u01ae\u01b1\u01b6\u01bc\u01c0\u01c6\u01d4"+
		"\u01dd\u01e1\u01e3\6\2\3\2\b\2\2\7\3\2\4\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}